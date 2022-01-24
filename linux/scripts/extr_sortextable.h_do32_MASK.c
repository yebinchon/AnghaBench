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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  (* table_sort_t ) (char*,int) ;
struct TYPE_7__ {int /*<<< orphan*/  e_shstrndx; int /*<<< orphan*/  e_shnum; int /*<<< orphan*/  e_shoff; } ;
struct TYPE_6__ {int /*<<< orphan*/  sh_addr; int /*<<< orphan*/  sh_offset; int /*<<< orphan*/  sh_size; int /*<<< orphan*/  sh_type; int /*<<< orphan*/  sh_info; int /*<<< orphan*/  sh_name; int /*<<< orphan*/  sh_link; } ;
struct TYPE_5__ {int /*<<< orphan*/  st_value; int /*<<< orphan*/  st_shndx; int /*<<< orphan*/  st_name; int /*<<< orphan*/  st_info; } ;
typedef  TYPE_1__ const Elf_Sym ;
typedef  TYPE_2__ Elf_Shdr ;
typedef  int /*<<< orphan*/  Elf_Rel ;
typedef  TYPE_3__ Elf_Ehdr ;
typedef  int /*<<< orphan*/  Elf32_Word ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int SHN_UNDEF ; 
 unsigned int SHN_XINDEX ; 
 int SHT_REL ; 
 int SHT_RELA ; 
 int SHT_SYMTAB_SHNDX ; 
 scalar_t__ STT_OBJECT ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  compare_extable ; 
 int extable_ent_size ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const* const) ; 
 size_t FUNC4 (unsigned int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(Elf_Ehdr *ehdr, char const *const fname, table_sort_t custom_sort)
{
	Elf_Shdr *shdr;
	Elf_Shdr *shstrtab_sec;
	Elf_Shdr *strtab_sec = NULL;
	Elf_Shdr *symtab_sec = NULL;
	Elf_Shdr *extab_sec = NULL;
	Elf_Sym *sym;
	const Elf_Sym *symtab;
	Elf32_Word *symtab_shndx_start = NULL;
	Elf_Sym *sort_needed_sym;
	Elf_Shdr *sort_needed_sec;
	Elf_Rel *relocs = NULL;
	int relocs_size = 0;
	uint32_t *sort_done_location;
	const char *secstrtab;
	const char *strtab;
	char *extab_image;
	int extab_index = 0;
	int i;
	int idx;
	unsigned int num_sections;
	unsigned int secindex_strings;

	shdr = (Elf_Shdr *)((char *)ehdr + FUNC1(&ehdr->e_shoff));

	num_sections = FUNC9(&ehdr->e_shnum);
	if (num_sections == SHN_UNDEF)
		num_sections = FUNC1(&shdr[0].sh_size);

	secindex_strings = FUNC9(&ehdr->e_shstrndx);
	if (secindex_strings == SHN_XINDEX)
		secindex_strings = FUNC8(&shdr[0].sh_link);

	shstrtab_sec = shdr + secindex_strings;
	secstrtab = (const char *)ehdr + FUNC1(&shstrtab_sec->sh_offset);
	for (i = 0; i < num_sections; i++) {
		idx = FUNC8(&shdr[i].sh_name);
		if (FUNC10(secstrtab + idx, "__ex_table") == 0) {
			extab_sec = shdr + i;
			extab_index = i;
		}
		if ((FUNC8(&shdr[i].sh_type) == SHT_REL ||
		     FUNC8(&shdr[i].sh_type) == SHT_RELA) &&
		    FUNC8(&shdr[i].sh_info) == extab_index) {
			relocs = (void *)ehdr + FUNC1(&shdr[i].sh_offset);
			relocs_size = FUNC1(&shdr[i].sh_size);
		}
		if (FUNC10(secstrtab + idx, ".symtab") == 0)
			symtab_sec = shdr + i;
		if (FUNC10(secstrtab + idx, ".strtab") == 0)
			strtab_sec = shdr + i;
		if (FUNC8(&shdr[i].sh_type) == SHT_SYMTAB_SHNDX)
			symtab_shndx_start = (Elf32_Word *)(
				(const char *)ehdr + FUNC1(&shdr[i].sh_offset));
	}
	if (strtab_sec == NULL) {
		FUNC3(stderr,	"no .strtab in  file: %s\n", fname);
		FUNC2();
	}
	if (symtab_sec == NULL) {
		FUNC3(stderr,	"no .symtab in  file: %s\n", fname);
		FUNC2();
	}
	symtab = (const Elf_Sym *)((const char *)ehdr +
				   FUNC1(&symtab_sec->sh_offset));
	if (extab_sec == NULL) {
		FUNC3(stderr,	"no __ex_table in  file: %s\n", fname);
		FUNC2();
	}
	strtab = (const char *)ehdr + FUNC1(&strtab_sec->sh_offset);

	extab_image = (void *)ehdr + FUNC1(&extab_sec->sh_offset);

	if (custom_sort) {
		custom_sort(extab_image, FUNC1(&extab_sec->sh_size));
	} else {
		int num_entries = FUNC1(&extab_sec->sh_size) / extable_ent_size;
		FUNC7(extab_image, num_entries,
		      extable_ent_size, compare_extable);
	}
	/* If there were relocations, we no longer need them. */
	if (relocs)
		FUNC5(relocs, 0, relocs_size);

	/* find main_extable_sort_needed */
	sort_needed_sym = NULL;
	for (i = 0; i < FUNC1(&symtab_sec->sh_size) / sizeof(Elf_Sym); i++) {
		sym = (void *)ehdr + FUNC1(&symtab_sec->sh_offset);
		sym += i;
		if (FUNC0(sym->st_info) != STT_OBJECT)
			continue;
		idx = FUNC8(&sym->st_name);
		if (FUNC10(strtab + idx, "main_extable_sort_needed") == 0) {
			sort_needed_sym = sym;
			break;
		}
	}
	if (sort_needed_sym == NULL) {
		FUNC3(stderr,
			"no main_extable_sort_needed symbol in  file: %s\n",
			fname);
		FUNC2();
	}
	sort_needed_sec = &shdr[FUNC4(FUNC9(&sym->st_shndx),
					     sort_needed_sym - symtab,
					     symtab_shndx_start)];
	sort_done_location = (void *)ehdr +
		FUNC1(&sort_needed_sec->sh_offset) +
		FUNC1(&sort_needed_sym->st_value) -
		FUNC1(&sort_needed_sec->sh_addr);

#if 0
	printf("sort done marker at %lx\n",
	       (unsigned long)((char *)sort_done_location - (char *)ehdr));
#endif
	/* We sorted it, clear the flag. */
	FUNC11(0, sort_done_location);
}