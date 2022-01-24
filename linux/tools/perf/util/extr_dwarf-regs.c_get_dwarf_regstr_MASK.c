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
#define  EM_386 139 
#define  EM_AARCH64 138 
#define  EM_ARM 137 
#define  EM_NONE 136 
#define  EM_PPC 135 
#define  EM_PPC64 134 
#define  EM_S390 133 
#define  EM_SH 132 
#define  EM_SPARC 131 
#define  EM_SPARCV9 130 
#define  EM_X86_64 129 
#define  EM_XTENSA 128 
 char const* FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  aarch64_regstr_tbl ; 
 int /*<<< orphan*/  arm_regstr_tbl ; 
 char const* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  powerpc_regstr_tbl ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  s390_regstr_tbl ; 
 int /*<<< orphan*/  sh_regstr_tbl ; 
 int /*<<< orphan*/  sparc_regstr_tbl ; 
 int /*<<< orphan*/  x86_32_regstr_tbl ; 
 int /*<<< orphan*/  x86_64_regstr_tbl ; 
 int /*<<< orphan*/  xtensa_regstr_tbl ; 

const char *FUNC3(unsigned int n, unsigned int machine)
{
	switch (machine) {
	case EM_NONE:	/* Generic arch - use host arch */
		return FUNC1(n);
	case EM_386:
		return FUNC0(x86_32_regstr_tbl, n);
	case EM_X86_64:
		return FUNC0(x86_64_regstr_tbl, n);
	case EM_ARM:
		return FUNC0(arm_regstr_tbl, n);
	case EM_AARCH64:
		return FUNC0(aarch64_regstr_tbl, n);
	case EM_SH:
		return FUNC0(sh_regstr_tbl, n);
	case EM_S390:
		return FUNC0(s390_regstr_tbl, n);
	case EM_PPC:
	case EM_PPC64:
		return FUNC0(powerpc_regstr_tbl, n);
	case EM_SPARC:
	case EM_SPARCV9:
		return FUNC0(sparc_regstr_tbl, n);
	case EM_XTENSA:
		return FUNC0(xtensa_regstr_tbl, n);
	default:
		FUNC2("ELF MACHINE %x is not supported.\n", machine);
	}
	return NULL;
}