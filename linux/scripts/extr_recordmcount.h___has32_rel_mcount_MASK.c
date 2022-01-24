#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sh_flags; int /*<<< orphan*/  sh_type; int /*<<< orphan*/  sh_name; int /*<<< orphan*/  sh_info; } ;
typedef  TYPE_1__ Elf_Shdr ;

/* Variables and functions */
 int SHF_EXECINSTR ; 
 size_t SHT_PROGBITS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char const* already_has_rel_mcount ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const* const) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char*,char const* const) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char const * FUNC4(Elf_Shdr const *const relhdr, /* reltype */
				     Elf_Shdr const *const shdr0,
				     char const *const shstrtab,
				     char const *const fname)
{
	/* .sh_info depends on .sh_type == SHT_REL[,A] */
	Elf_Shdr const *const txthdr = &shdr0[FUNC3(relhdr->sh_info)];
	char const *const txtname = &shstrtab[FUNC3(txthdr->sh_name)];

	if (FUNC2("__mcount_loc", txtname) == 0) {
		FUNC1(stderr, "warning: __mcount_loc already exists: %s\n",
			fname);
		return already_has_rel_mcount;
	}
	if (FUNC3(txthdr->sh_type) != SHT_PROGBITS ||
	    !(FUNC0(txthdr->sh_flags) & SHF_EXECINSTR))
		return NULL;
	return txtname;
}