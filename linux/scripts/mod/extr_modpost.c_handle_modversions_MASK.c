#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct module {int has_init; int has_cleanup; int /*<<< orphan*/  unres; int /*<<< orphan*/  name; scalar_t__ is_dot_o; } ;
struct elf_info {TYPE_2__* hdr; TYPE_1__* sechdrs; } ;
typedef  enum export { ____Placeholder_export } export ;
struct TYPE_8__ {int st_value; int st_shndx; int /*<<< orphan*/  st_info; } ;
struct TYPE_7__ {scalar_t__ e_type; int /*<<< orphan*/  e_machine; } ;
struct TYPE_6__ {int sh_offset; int sh_addr; } ;
typedef  TYPE_3__ Elf_Sym ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EM_SPARC ; 
 int /*<<< orphan*/  EM_SPARCV9 ; 
 scalar_t__ ET_REL ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int SHN_ABS ; 
#define  SHN_COMMON 129 
#define  SHN_UNDEF 128 
 int /*<<< orphan*/  STB_GLOBAL ; 
 int /*<<< orphan*/  STB_WEAK ; 
 int /*<<< orphan*/  STT_SPARC_REGISTER ; 
 unsigned int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct elf_info*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct elf_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct elf_info*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct elf_info*,char const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int FUNC12 (char*) ; 
 scalar_t__ FUNC13 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char const*,struct module*,int) ; 
 int /*<<< orphan*/  FUNC15 (char const*,struct module*,unsigned int,int) ; 
 char FUNC16 (char) ; 
 int /*<<< orphan*/  FUNC17 (char*,char const*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC18(struct module *mod, struct elf_info *info,
			       Elf_Sym *sym, const char *symname)
{
	unsigned int crc;
	enum export export;
	bool is_crc = false;
	const char *name;

	if ((!FUNC9(mod->name) || mod->is_dot_o) &&
	    FUNC13(symname, "__ksymtab"))
		export = FUNC6(info, FUNC7(info, sym));
	else
		export = FUNC5(info, FUNC7(info, sym));

	/* CRC'd symbol */
	if (FUNC13(symname, "__crc_")) {
		is_crc = true;
		crc = (unsigned int) sym->st_value;
		if (sym->st_shndx != SHN_UNDEF && sym->st_shndx != SHN_ABS) {
			unsigned int *crcp;

			/* symbol points to the CRC in the ELF object */
			crcp = (void *)info->hdr + sym->st_value +
			       info->sechdrs[sym->st_shndx].sh_offset -
			       (info->hdr->e_type != ET_REL ?
				info->sechdrs[sym->st_shndx].sh_addr : 0);
			crc = FUNC3(*crcp);
		}
		FUNC15(symname + FUNC12("__crc_"), mod, crc,
				export);
	}

	switch (sym->st_shndx) {
	case SHN_COMMON:
		if (FUNC13(symname, "__gnu_lto_")) {
			/* Should warn here, but modpost runs before the linker */
		} else
			FUNC17("\"%s\" [%s] is COMMON symbol\n", symname, mod->name);
		break;
	case SHN_UNDEF:
		/* undefined symbol */
		if (FUNC0(sym->st_info) != STB_GLOBAL &&
		    FUNC0(sym->st_info) != STB_WEAK)
			break;
		if (FUNC8(info, symname))
			break;
/* cope with newer glibc (2.3.4 or higher) STT_ definition in elf.h */
#if defined(STT_REGISTER) || defined(STT_SPARC_REGISTER)
/* add compatibility with older glibc */
#ifndef STT_SPARC_REGISTER
#define STT_SPARC_REGISTER STT_REGISTER
#endif
		if (info->hdr->e_machine == EM_SPARC ||
		    info->hdr->e_machine == EM_SPARCV9) {
			/* Ignore register directives. */
			if (ELF_ST_TYPE(sym->st_info) == STT_SPARC_REGISTER)
				break;
			if (symname[0] == '.') {
				char *munged = NOFAIL(strdup(symname));
				munged[0] = '_';
				munged[1] = toupper(munged[1]);
				symname = munged;
			}
		}
#endif

		if (is_crc) {
			const char *e = FUNC9(mod->name) ?"":".ko";
			FUNC17("EXPORT symbol \"%s\" [%s%s] version generation failed, symbol will not be versioned.\n",
			     symname + FUNC12("__crc_"), mod->name, e);
		}
		mod->unres = FUNC4(symname,
					  FUNC0(sym->st_info) == STB_WEAK,
					  mod->unres);
		break;
	default:
		/* All exported symbols */
		if (FUNC13(symname, "__ksymtab_")) {
			name = symname + FUNC12("__ksymtab_");
			FUNC14(name, mod, export);
		}
		if (FUNC10(symname, "init_module") == 0)
			mod->has_init = 1;
		if (FUNC10(symname, "cleanup_module") == 0)
			mod->has_cleanup = 1;
		break;
	}
}