#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t sh_size; size_t sh_entsize; int sh_addralign; size_t sh_name; int /*<<< orphan*/  sh_flags; int /*<<< orphan*/  sh_type; } ;
struct section {size_t len; int changed; TYPE_3__ sh; scalar_t__ name; int /*<<< orphan*/  idx; TYPE_1__* data; int /*<<< orphan*/  list; int /*<<< orphan*/  symbol_hash; int /*<<< orphan*/  rela_hash; int /*<<< orphan*/  rela_list; int /*<<< orphan*/  symbol_list; } ;
struct elf {int /*<<< orphan*/  elf; int /*<<< orphan*/  sections; } ;
struct TYPE_5__ {int d_align; scalar_t__ d_size; scalar_t__ d_buf; } ;
struct TYPE_4__ {size_t d_size; int d_align; struct section* d_buf; } ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  TYPE_2__ Elf_Data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SHF_ALLOC ; 
 int /*<<< orphan*/  SHT_PROGBITS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 struct section* FUNC7 (struct elf*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC11 (size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct section*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char const*) ; 
 scalar_t__ FUNC15 (char const*) ; 

struct section *FUNC16(struct elf *elf, const char *name,
				   size_t entsize, int nr)
{
	struct section *sec, *shstrtab;
	size_t size = entsize * nr;
	Elf_Scn *s;
	Elf_Data *data;

	sec = FUNC11(sizeof(*sec));
	if (!sec) {
		FUNC13("malloc");
		return NULL;
	}
	FUNC12(sec, 0, sizeof(*sec));

	FUNC0(&sec->symbol_list);
	FUNC0(&sec->rela_list);
	FUNC9(sec->rela_hash);
	FUNC9(sec->symbol_hash);

	FUNC10(&sec->list, &elf->sections);

	s = FUNC6(elf->elf);
	if (!s) {
		FUNC2("elf_newscn");
		return NULL;
	}

	sec->name = FUNC14(name);
	if (!sec->name) {
		FUNC13("strdup");
		return NULL;
	}

	sec->idx = FUNC4(s);
	sec->len = size;
	sec->changed = true;

	sec->data = FUNC5(s);
	if (!sec->data) {
		FUNC2("elf_newdata");
		return NULL;
	}

	sec->data->d_size = size;
	sec->data->d_align = 1;

	if (size) {
		sec->data->d_buf = FUNC11(size);
		if (!sec->data->d_buf) {
			FUNC13("malloc");
			return NULL;
		}
		FUNC12(sec->data->d_buf, 0, size);
	}

	if (!FUNC8(s, &sec->sh)) {
		FUNC2("gelf_getshdr");
		return NULL;
	}

	sec->sh.sh_size = size;
	sec->sh.sh_entsize = entsize;
	sec->sh.sh_type = SHT_PROGBITS;
	sec->sh.sh_addralign = 1;
	sec->sh.sh_flags = SHF_ALLOC;


	/* Add section name to .shstrtab (or .strtab for Clang) */
	shstrtab = FUNC7(elf, ".shstrtab");
	if (!shstrtab)
		shstrtab = FUNC7(elf, ".strtab");
	if (!shstrtab) {
		FUNC1("can't find .shstrtab or .strtab section");
		return NULL;
	}

	s = FUNC3(elf->elf, shstrtab->idx);
	if (!s) {
		FUNC2("elf_getscn");
		return NULL;
	}

	data = FUNC5(s);
	if (!data) {
		FUNC2("elf_newdata");
		return NULL;
	}

	data->d_buf = sec->name;
	data->d_size = FUNC15(name) + 1;
	data->d_align = 1;

	sec->sh.sh_name = shstrtab->len;

	shstrtab->len += FUNC15(name) + 1;
	shstrtab->changed = true;

	return sec;
}