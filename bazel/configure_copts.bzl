# SPDX-FileCopyrightText: © 2025 Team CharLS
# SPDX-License-Identifier: BSD-3-Clause

"""
Defines the copts flags for the supported compilers and select the matching options
"""

MSVC_FLAGS = [
    "/W4",
    "/D_ENABLE_EXTENDED_ALIGNED_STORAGE",
    "/std:c++17",
    "/permissive-",
]

GCC_FLAGS = [
    "-Wall",
    "-Wextra",
    "-Wcast-qual",
    "-Wformat=2",
    "-Wmissing-declarations",
    "-Woverlength-strings",
    "-Wpointer-arith",
    "-Wundef",
    "-Wunused-local-typedefs",
    "-Wunused-result",
    "-Wvarargs",
    "-Wvla",
    "-Wwrite-strings",
]

LLVM_FLAGS = [
    "-Wall",
    "-Wextra",
    "-Wcast-qual",
    "-Wconversion",
    "-Wdeprecated-pragma",
    "-Wfloat-overflow-conversion",
    "-Wfloat-zero-conversion",
    "-Wfor-loop-analysis",
    "-Wformat-security",
    "-Wgnu-redeclared-enum",
    "-Winfinite-recursion",
    "-Winvalid-constexpr",
    "-Wliteral-conversion",
    "-Wmissing-declarations",
    "-Wnullability-completeness",
    "-Woverlength-strings",
    "-Wpointer-arith",
    "-Wself-assign",
    "-Wshadow-all",
    "-Wshorten-64-to-32",
    "-Wno-sign-conversion",
    "-Wstring-conversion",
    "-Wtautological-overlap-compare",
    "-Wtautological-unsigned-zero-compare",
    "-Wthread-safety",
    "-Wundef",
    "-Wuninitialized",
    "-Wunreachable-code",
    "-Wunused-comparison",
    "-Wunused-local-typedefs",
    "-Wunused-result",
    "-Wvla",
    "-Wwrite-strings",
]

CHARLS_BAZEL_TEST_DEFAULT_COPTS = select({
    "@rules_cc//cc/compiler:msvc-cl": MSVC_FLAGS,
    "@rules_cc//cc/compiler:clang": LLVM_FLAGS,
    "@rules_cc//cc/compiler:gcc": GCC_FLAGS,
    "//conditions:default": [],
})
