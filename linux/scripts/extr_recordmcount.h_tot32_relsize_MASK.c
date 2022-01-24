#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sh_size; } ;
typedef  TYPE_1__ Elf_Shdr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char const* already_has_rel_mcount ; 
 char* FUNC1 (TYPE_1__ const*,TYPE_1__ const* const,char const* const,char const* const) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static unsigned FUNC3(Elf_Shdr const *const shdr0,
			    unsigned nhdr,
			    const char *const shstrtab,
			    const char *const fname)
{
	unsigned totrelsz = 0;
	Elf_Shdr const *shdrp = shdr0;
	char const *txtname;

	for (; nhdr; --nhdr, ++shdrp) {
		txtname = FUNC1(shdrp, shdr0, shstrtab, fname);
		if (txtname == already_has_rel_mcount) {
			totrelsz = 0;
			break;
		}
		if (txtname && FUNC2(txtname))
			totrelsz += FUNC0(shdrp->sh_size);
	}
	return totrelsz;
}