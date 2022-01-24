#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  HAVE_AIO_SUPPORT ; 
 int /*<<< orphan*/  HAVE_AUXTRACE_SUPPORT ; 
 int /*<<< orphan*/  HAVE_DWARF_GETLOCATIONS_SUPPORT ; 
 int /*<<< orphan*/  HAVE_DWARF_SUPPORT ; 
 int /*<<< orphan*/  HAVE_GLIBC_SUPPORT ; 
 int /*<<< orphan*/  HAVE_GTK2_SUPPORT ; 
 int /*<<< orphan*/  HAVE_LIBAUDIT_SUPPORT ; 
 int /*<<< orphan*/  HAVE_LIBBFD_SUPPORT ; 
 int /*<<< orphan*/  HAVE_LIBBPF_SUPPORT ; 
 int /*<<< orphan*/  HAVE_LIBCRYPTO_SUPPORT ; 
 int /*<<< orphan*/  HAVE_LIBELF_SUPPORT ; 
 int /*<<< orphan*/  HAVE_LIBNUMA_SUPPORT ; 
 int /*<<< orphan*/  HAVE_LIBPERL_SUPPORT ; 
 int /*<<< orphan*/  HAVE_LIBPYTHON_SUPPORT ; 
 int /*<<< orphan*/  HAVE_LIBUNWIND_SUPPORT ; 
 int /*<<< orphan*/  HAVE_LZMA_SUPPORT ; 
 int /*<<< orphan*/  HAVE_SLANG_SUPPORT ; 
 int /*<<< orphan*/  HAVE_SYSCALL_TABLE_SUPPORT ; 
 int /*<<< orphan*/  HAVE_ZLIB_SUPPORT ; 
 int /*<<< orphan*/  HAVE_ZSTD_SUPPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ aio ; 
 scalar_t__ bpf ; 
 scalar_t__ dwarf ; 
 scalar_t__ dwarf_getlocations ; 
 scalar_t__ get_cpuid ; 
 scalar_t__ glibc ; 
 scalar_t__ gtk2 ; 
 scalar_t__ libaudit ; 
 scalar_t__ libbfd ; 
 scalar_t__ libcrypto ; 
 scalar_t__ libdw ; 
 scalar_t__ libelf ; 
 scalar_t__ libnuma ; 
 scalar_t__ libperl ; 
 scalar_t__ libpython ; 
 scalar_t__ libslang ; 
 scalar_t__ libunwind ; 
 scalar_t__ lzma ; 
 scalar_t__ numa_num_possible_cpus ; 
 scalar_t__ syscall_table ; 
 scalar_t__ unwind ; 
 scalar_t__ zlib ; 
 scalar_t__ zstd ; 

__attribute__((used)) static void FUNC1(void)
{
	FUNC0(HAVE_DWARF_SUPPORT, dwarf);
	FUNC0(HAVE_DWARF_GETLOCATIONS_SUPPORT, dwarf_getlocations);
	FUNC0(HAVE_GLIBC_SUPPORT, glibc);
	FUNC0(HAVE_GTK2_SUPPORT, gtk2);
#ifndef HAVE_SYSCALL_TABLE_SUPPORT
	FUNC0(HAVE_LIBAUDIT_SUPPORT, libaudit);
#endif
	FUNC0(HAVE_SYSCALL_TABLE_SUPPORT, syscall_table);
	FUNC0(HAVE_LIBBFD_SUPPORT, libbfd);
	FUNC0(HAVE_LIBELF_SUPPORT, libelf);
	FUNC0(HAVE_LIBNUMA_SUPPORT, libnuma);
	FUNC0(HAVE_LIBNUMA_SUPPORT, numa_num_possible_cpus);
	FUNC0(HAVE_LIBPERL_SUPPORT, libperl);
	FUNC0(HAVE_LIBPYTHON_SUPPORT, libpython);
	FUNC0(HAVE_SLANG_SUPPORT, libslang);
	FUNC0(HAVE_LIBCRYPTO_SUPPORT, libcrypto);
	FUNC0(HAVE_LIBUNWIND_SUPPORT, libunwind);
	FUNC0(HAVE_DWARF_SUPPORT, libdw-dwarf-unwind);
	FUNC0(HAVE_ZLIB_SUPPORT, zlib);
	FUNC0(HAVE_LZMA_SUPPORT, lzma);
	FUNC0(HAVE_AUXTRACE_SUPPORT, get_cpuid);
	FUNC0(HAVE_LIBBPF_SUPPORT, bpf);
	FUNC0(HAVE_AIO_SUPPORT, aio);
	FUNC0(HAVE_ZSTD_SUPPORT, zstd);
}