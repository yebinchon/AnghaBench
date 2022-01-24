#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct elf_info {TYPE_2__* symtab_start; TYPE_1__* hdr; } ;
struct TYPE_15__ {unsigned int r_offset; unsigned int r_info; unsigned int r_addend; } ;
struct TYPE_14__ {int sh_offset; int sh_size; } ;
struct TYPE_13__ {int /*<<< orphan*/  st_shndx; } ;
struct TYPE_12__ {scalar_t__ e_machine; } ;
typedef  TYPE_2__ Elf_Sym ;
typedef  TYPE_3__ Elf_Shdr ;
typedef  TYPE_4__ Elf_Rela ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 scalar_t__ EM_MIPS ; 
 void* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,struct elf_info*,TYPE_4__*,TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,TYPE_4__*) ; 
 scalar_t__ FUNC7 (TYPE_4__*,TYPE_4__*,char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (struct elf_info*,TYPE_3__*) ; 
 int /*<<< orphan*/  section_white_list ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(const char *modname, struct elf_info *elf,
			 Elf_Shdr *sechdr)
{
	Elf_Sym  *sym;
	Elf_Rela *rela;
	Elf_Rela r;
	unsigned int r_sym;
	const char *fromsec;

	Elf_Rela *start = (void *)elf->hdr + sechdr->sh_offset;
	Elf_Rela *stop  = (void *)start + sechdr->sh_size;

	fromsec = FUNC10(elf, sechdr);
	fromsec += FUNC11(".rela");
	/* if from section (name) is know good then skip it */
	if (FUNC9(fromsec, section_white_list))
		return;

	for (rela = start; rela < stop; rela++) {
		r.r_offset = FUNC4(rela->r_offset);
#if KERNEL_ELFCLASS == ELFCLASS64
		if (elf->hdr->e_machine == EM_MIPS) {
			unsigned int r_typ;
			r_sym = FUNC0(rela->r_info);
			r_sym = FUNC4(r_sym);
			r_typ = FUNC1(rela->r_info);
			r.r_info = FUNC2(r_sym, r_typ);
		} else {
			r.r_info = FUNC4(rela->r_info);
			r_sym = FUNC3(r.r_info);
		}
#else
		r.r_info = TO_NATIVE(rela->r_info);
		r_sym = ELF_R_SYM(r.r_info);
#endif
		r.r_addend = FUNC4(rela->r_addend);
		sym = elf->symtab_start + r_sym;
		/* Skip special sections */
		if (FUNC8(sym->st_shndx))
			continue;
		if (FUNC7(start, rela, fromsec))
			FUNC6(fromsec, &r);
		FUNC5(modname, elf, &r, sym, fromsec);
	}
}