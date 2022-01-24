#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct elf_info {TYPE_2__* symtab_start; TYPE_1__* hdr; } ;
struct TYPE_23__ {unsigned int r_offset; unsigned int r_info; } ;
struct TYPE_22__ {scalar_t__ r_addend; void* r_info; void* r_offset; } ;
struct TYPE_21__ {int sh_offset; int sh_size; } ;
struct TYPE_20__ {int /*<<< orphan*/  st_shndx; } ;
struct TYPE_19__ {int e_machine; } ;
typedef  TYPE_2__ Elf_Sym ;
typedef  TYPE_3__ Elf_Shdr ;
typedef  TYPE_4__ Elf_Rela ;
typedef  TYPE_5__ Elf_Rel ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 void* FUNC2 (unsigned int,unsigned int) ; 
 unsigned int FUNC3 (void*) ; 
#define  EM_386 130 
#define  EM_ARM 129 
#define  EM_MIPS 128 
 void* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct elf_info*,TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (struct elf_info*,TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct elf_info*,TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,struct elf_info*,TYPE_4__*,TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,TYPE_4__*) ; 
 scalar_t__ FUNC10 (TYPE_5__*,TYPE_5__*,char const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC13 (struct elf_info*,TYPE_3__*) ; 
 int /*<<< orphan*/  section_white_list ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static void FUNC15(const char *modname, struct elf_info *elf,
			Elf_Shdr *sechdr)
{
	Elf_Sym *sym;
	Elf_Rel *rel;
	Elf_Rela r;
	unsigned int r_sym;
	const char *fromsec;

	Elf_Rel *start = (void *)elf->hdr + sechdr->sh_offset;
	Elf_Rel *stop  = (void *)start + sechdr->sh_size;

	fromsec = FUNC13(elf, sechdr);
	fromsec += FUNC14(".rel");
	/* if from section (name) is know good then skip it */
	if (FUNC12(fromsec, section_white_list))
		return;

	for (rel = start; rel < stop; rel++) {
		r.r_offset = FUNC4(rel->r_offset);
#if KERNEL_ELFCLASS == ELFCLASS64
		if (elf->hdr->e_machine == EM_MIPS) {
			unsigned int r_typ;
			r_sym = FUNC0(rel->r_info);
			r_sym = FUNC4(r_sym);
			r_typ = FUNC1(rel->r_info);
			r.r_info = FUNC2(r_sym, r_typ);
		} else {
			r.r_info = FUNC4(rel->r_info);
			r_sym = FUNC3(r.r_info);
		}
#else
		r.r_info = TO_NATIVE(rel->r_info);
		r_sym = ELF_R_SYM(r.r_info);
#endif
		r.r_addend = 0;
		switch (elf->hdr->e_machine) {
		case EM_386:
			if (FUNC5(elf, sechdr, &r))
				continue;
			break;
		case EM_ARM:
			if (FUNC6(elf, sechdr, &r))
				continue;
			break;
		case EM_MIPS:
			if (FUNC7(elf, sechdr, &r))
				continue;
			break;
		}
		sym = elf->symtab_start + r_sym;
		/* Skip special sections */
		if (FUNC11(sym->st_shndx))
			continue;
		if (FUNC10(start, rel, fromsec))
			FUNC9(fromsec, &r);
		FUNC8(modname, elf, &r, sym, fromsec);
	}
}