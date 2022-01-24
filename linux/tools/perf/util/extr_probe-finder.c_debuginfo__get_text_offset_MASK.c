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
struct debuginfo {int /*<<< orphan*/  mod; int /*<<< orphan*/  bias; } ;
struct TYPE_4__ {scalar_t__ sh_offset; int /*<<< orphan*/  sh_addr; } ;
typedef  TYPE_1__ GElf_Shdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  int /*<<< orphan*/  Elf32_Word ;
typedef  int /*<<< orphan*/  Elf ;
typedef  int /*<<< orphan*/  Dwarf_Addr ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

int FUNC6(struct debuginfo *dbg, Dwarf_Addr *offs,
				bool adjust_offset)
{
	int n, i;
	Elf32_Word shndx;
	Elf_Scn *scn;
	Elf *elf;
	GElf_Shdr mem, *shdr;
	const char *p;

	elf = FUNC0(dbg->mod, &dbg->bias);
	if (!elf)
		return -EINVAL;

	/* Get the number of relocations */
	n = FUNC2(dbg->mod);
	if (n < 0)
		return -ENOENT;
	/* Search the relocation related .text section */
	for (i = 0; i < n; i++) {
		p = FUNC1(dbg->mod, i, &shndx);
		if (FUNC5(p, ".text") == 0) {
			/* OK, get the section header */
			scn = FUNC3(elf, shndx);
			if (!scn)
				return -ENOENT;
			shdr = FUNC4(scn, &mem);
			if (!shdr)
				return -ENOENT;
			*offs = shdr->sh_addr;
			if (adjust_offset)
				*offs -= shdr->sh_offset;
		}
	}
	return 0;
}