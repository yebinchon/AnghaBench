#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct elf_info {int size; scalar_t__ num_sections; scalar_t__ secindex_strings; scalar_t__ modinfo_len; unsigned int export_sec; unsigned int export_unused_sec; unsigned int export_gpl_sec; unsigned int export_unused_gpl_sec; unsigned int export_gpl_future_sec; scalar_t__* symtab_shndx_start; scalar_t__* symtab_shndx_stop; TYPE_1__* symtab_stop; TYPE_1__* symtab_start; void* strtab; void* ksymtab_strings; void* modinfo; TYPE_2__* sechdrs; TYPE_3__* hdr; } ;
struct TYPE_7__ {scalar_t__* e_ident; scalar_t__ e_type; scalar_t__ e_machine; scalar_t__ e_version; scalar_t__ e_entry; scalar_t__ e_phoff; scalar_t__ e_shoff; scalar_t__ e_flags; scalar_t__ e_ehsize; scalar_t__ e_phentsize; scalar_t__ e_phnum; scalar_t__ e_shentsize; scalar_t__ e_shnum; scalar_t__ e_shstrndx; } ;
struct TYPE_6__ {scalar_t__ sh_size; scalar_t__ sh_link; scalar_t__ sh_name; scalar_t__ sh_type; scalar_t__ sh_flags; scalar_t__ sh_addr; scalar_t__ sh_offset; scalar_t__ sh_info; scalar_t__ sh_addralign; scalar_t__ sh_entsize; } ;
struct TYPE_5__ {scalar_t__ st_shndx; scalar_t__ st_name; scalar_t__ st_value; scalar_t__ st_size; } ;
typedef  TYPE_1__ Elf_Sym ;
typedef  TYPE_2__ Elf_Shdr ;
typedef  TYPE_3__ Elf_Ehdr ;
typedef  scalar_t__ Elf32_Word ;

/* Variables and functions */
 size_t EI_MAG0 ; 
 size_t EI_MAG1 ; 
 size_t EI_MAG2 ; 
 size_t EI_MAG3 ; 
 scalar_t__ ELFMAG0 ; 
 scalar_t__ ELFMAG1 ; 
 scalar_t__ ELFMAG2 ; 
 scalar_t__ ELFMAG3 ; 
 scalar_t__ SHN_UNDEF ; 
 scalar_t__ SHN_XINDEX ; 
 scalar_t__ SHT_NOBITS ; 
 scalar_t__ SHT_SYMTAB ; 
 scalar_t__ SHT_SYMTAB_SHNDX ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 TYPE_3__* FUNC4 (char const*,int*) ; 
 scalar_t__ ignore_missing_files ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct elf_info *info, const char *filename)
{
	unsigned int i;
	Elf_Ehdr *hdr;
	Elf_Shdr *sechdrs;
	Elf_Sym  *sym;
	const char *secstrings;
	unsigned int symtab_idx = ~0U, symtab_shndx_idx = ~0U;

	hdr = FUNC4(filename, &info->size);
	if (!hdr) {
		if (ignore_missing_files) {
			FUNC3(stderr, "%s: %s (ignored)\n", filename,
				FUNC7(errno));
			return 0;
		}
		FUNC5(filename);
		FUNC1(1);
	}
	info->hdr = hdr;
	if (info->size < sizeof(*hdr)) {
		/* file too small, assume this is an empty .o file */
		return 0;
	}
	/* Is this a valid ELF file? */
	if ((hdr->e_ident[EI_MAG0] != ELFMAG0) ||
	    (hdr->e_ident[EI_MAG1] != ELFMAG1) ||
	    (hdr->e_ident[EI_MAG2] != ELFMAG2) ||
	    (hdr->e_ident[EI_MAG3] != ELFMAG3)) {
		/* Not an ELF file - silently ignore it */
		return 0;
	}
	/* Fix endianness in ELF header */
	hdr->e_type      = FUNC0(hdr->e_type);
	hdr->e_machine   = FUNC0(hdr->e_machine);
	hdr->e_version   = FUNC0(hdr->e_version);
	hdr->e_entry     = FUNC0(hdr->e_entry);
	hdr->e_phoff     = FUNC0(hdr->e_phoff);
	hdr->e_shoff     = FUNC0(hdr->e_shoff);
	hdr->e_flags     = FUNC0(hdr->e_flags);
	hdr->e_ehsize    = FUNC0(hdr->e_ehsize);
	hdr->e_phentsize = FUNC0(hdr->e_phentsize);
	hdr->e_phnum     = FUNC0(hdr->e_phnum);
	hdr->e_shentsize = FUNC0(hdr->e_shentsize);
	hdr->e_shnum     = FUNC0(hdr->e_shnum);
	hdr->e_shstrndx  = FUNC0(hdr->e_shstrndx);
	sechdrs = (void *)hdr + hdr->e_shoff;
	info->sechdrs = sechdrs;

	/* Check if file offset is correct */
	if (hdr->e_shoff > info->size) {
		FUNC2("section header offset=%lu in file '%s' is bigger than "
		      "filesize=%lu\n", (unsigned long)hdr->e_shoff,
		      filename, info->size);
		return 0;
	}

	if (hdr->e_shnum == SHN_UNDEF) {
		/*
		 * There are more than 64k sections,
		 * read count from .sh_size.
		 */
		info->num_sections = FUNC0(sechdrs[0].sh_size);
	}
	else {
		info->num_sections = hdr->e_shnum;
	}
	if (hdr->e_shstrndx == SHN_XINDEX) {
		info->secindex_strings = FUNC0(sechdrs[0].sh_link);
	}
	else {
		info->secindex_strings = hdr->e_shstrndx;
	}

	/* Fix endianness in section headers */
	for (i = 0; i < info->num_sections; i++) {
		sechdrs[i].sh_name      = FUNC0(sechdrs[i].sh_name);
		sechdrs[i].sh_type      = FUNC0(sechdrs[i].sh_type);
		sechdrs[i].sh_flags     = FUNC0(sechdrs[i].sh_flags);
		sechdrs[i].sh_addr      = FUNC0(sechdrs[i].sh_addr);
		sechdrs[i].sh_offset    = FUNC0(sechdrs[i].sh_offset);
		sechdrs[i].sh_size      = FUNC0(sechdrs[i].sh_size);
		sechdrs[i].sh_link      = FUNC0(sechdrs[i].sh_link);
		sechdrs[i].sh_info      = FUNC0(sechdrs[i].sh_info);
		sechdrs[i].sh_addralign = FUNC0(sechdrs[i].sh_addralign);
		sechdrs[i].sh_entsize   = FUNC0(sechdrs[i].sh_entsize);
	}
	/* Find symbol table. */
	secstrings = (void *)hdr + sechdrs[info->secindex_strings].sh_offset;
	for (i = 1; i < info->num_sections; i++) {
		const char *secname;
		int nobits = sechdrs[i].sh_type == SHT_NOBITS;

		if (!nobits && sechdrs[i].sh_offset > info->size) {
			FUNC2("%s is truncated. sechdrs[i].sh_offset=%lu > "
			      "sizeof(*hrd)=%zu\n", filename,
			      (unsigned long)sechdrs[i].sh_offset,
			      sizeof(*hdr));
			return 0;
		}
		secname = secstrings + sechdrs[i].sh_name;
		if (FUNC6(secname, ".modinfo") == 0) {
			if (nobits)
				FUNC2("%s has NOBITS .modinfo\n", filename);
			info->modinfo = (void *)hdr + sechdrs[i].sh_offset;
			info->modinfo_len = sechdrs[i].sh_size;
		} else if (FUNC6(secname, "__ksymtab") == 0)
			info->export_sec = i;
		else if (FUNC6(secname, "__ksymtab_unused") == 0)
			info->export_unused_sec = i;
		else if (FUNC6(secname, "__ksymtab_gpl") == 0)
			info->export_gpl_sec = i;
		else if (FUNC6(secname, "__ksymtab_unused_gpl") == 0)
			info->export_unused_gpl_sec = i;
		else if (FUNC6(secname, "__ksymtab_gpl_future") == 0)
			info->export_gpl_future_sec = i;
		else if (FUNC6(secname, "__ksymtab_strings") == 0)
			info->ksymtab_strings = (void *)hdr +
						sechdrs[i].sh_offset -
						sechdrs[i].sh_addr;

		if (sechdrs[i].sh_type == SHT_SYMTAB) {
			unsigned int sh_link_idx;
			symtab_idx = i;
			info->symtab_start = (void *)hdr +
			    sechdrs[i].sh_offset;
			info->symtab_stop  = (void *)hdr +
			    sechdrs[i].sh_offset + sechdrs[i].sh_size;
			sh_link_idx = sechdrs[i].sh_link;
			info->strtab       = (void *)hdr +
			    sechdrs[sh_link_idx].sh_offset;
		}

		/* 32bit section no. table? ("more than 64k sections") */
		if (sechdrs[i].sh_type == SHT_SYMTAB_SHNDX) {
			symtab_shndx_idx = i;
			info->symtab_shndx_start = (void *)hdr +
			    sechdrs[i].sh_offset;
			info->symtab_shndx_stop  = (void *)hdr +
			    sechdrs[i].sh_offset + sechdrs[i].sh_size;
		}
	}
	if (!info->symtab_start)
		FUNC2("%s has no symtab?\n", filename);

	/* Fix endianness in symbols */
	for (sym = info->symtab_start; sym < info->symtab_stop; sym++) {
		sym->st_shndx = FUNC0(sym->st_shndx);
		sym->st_name  = FUNC0(sym->st_name);
		sym->st_value = FUNC0(sym->st_value);
		sym->st_size  = FUNC0(sym->st_size);
	}

	if (symtab_shndx_idx != ~0U) {
		Elf32_Word *p;
		if (symtab_idx != sechdrs[symtab_shndx_idx].sh_link)
			FUNC2("%s: SYMTAB_SHNDX has bad sh_link: %u!=%u\n",
			      filename, sechdrs[symtab_shndx_idx].sh_link,
			      symtab_idx);
		/* Fix endianness */
		for (p = info->symtab_shndx_start; p < info->symtab_shndx_stop;
		     p++)
			*p = FUNC0(*p);
	}

	return 1;
}