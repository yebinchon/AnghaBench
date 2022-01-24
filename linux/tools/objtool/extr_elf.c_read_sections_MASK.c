#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ sh_size; int /*<<< orphan*/  sh_name; } ;
struct section {scalar_t__ len; TYPE_1__ sh; int /*<<< orphan*/  name; TYPE_2__* data; int /*<<< orphan*/  idx; int /*<<< orphan*/  list; int /*<<< orphan*/  symbol_hash; int /*<<< orphan*/  rela_hash; int /*<<< orphan*/  rela_list; int /*<<< orphan*/  symbol_list; } ;
struct elf {int /*<<< orphan*/  elf; int /*<<< orphan*/  sections; } ;
struct TYPE_4__ {scalar_t__ d_off; scalar_t__ d_size; } ;
typedef  int /*<<< orphan*/  Elf_Scn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct section* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct section*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static int FUNC16(struct elf *elf)
{
	Elf_Scn *s = NULL;
	struct section *sec;
	size_t shstrndx, sections_nr;
	int i;

	if (FUNC5(elf->elf, &sections_nr)) {
		FUNC2("elf_getshdrnum");
		return -1;
	}

	if (FUNC6(elf->elf, &shstrndx)) {
		FUNC2("elf_getshdrstrndx");
		return -1;
	}

	for (i = 0; i < sections_nr; i++) {
		sec = FUNC13(sizeof(*sec));
		if (!sec) {
			FUNC15("malloc");
			return -1;
		}
		FUNC14(sec, 0, sizeof(*sec));

		FUNC0(&sec->symbol_list);
		FUNC0(&sec->rela_list);
		FUNC11(sec->rela_hash);
		FUNC11(sec->symbol_hash);

		FUNC12(&sec->list, &elf->sections);

		s = FUNC4(elf->elf, i);
		if (!s) {
			FUNC2("elf_getscn");
			return -1;
		}

		sec->idx = FUNC7(s);

		if (!FUNC10(s, &sec->sh)) {
			FUNC2("gelf_getshdr");
			return -1;
		}

		sec->name = FUNC9(elf->elf, shstrndx, sec->sh.sh_name);
		if (!sec->name) {
			FUNC2("elf_strptr");
			return -1;
		}

		if (sec->sh.sh_size != 0) {
			sec->data = FUNC3(s, NULL);
			if (!sec->data) {
				FUNC2("elf_getdata");
				return -1;
			}
			if (sec->data->d_off != 0 ||
			    sec->data->d_size != sec->sh.sh_size) {
				FUNC1("unexpected data attributes for %s",
				     sec->name);
				return -1;
			}
		}
		sec->len = sec->sh.sh_size;
	}

	/* sanity check, one more call to elf_nextscn() should return NULL */
	if (FUNC8(elf->elf, s)) {
		FUNC1("section entry mismatch");
		return -1;
	}

	return 0;
}