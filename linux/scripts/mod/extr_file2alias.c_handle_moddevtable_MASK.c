#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct module {int dummy; } ;
struct elf_info {size_t num_sections; TYPE_1__* sechdrs; scalar_t__ hdr; } ;
struct devtable {char* device_id; int /*<<< orphan*/  do_entry; int /*<<< orphan*/  id_size; } ;
struct TYPE_6__ {int st_value; int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_info; int /*<<< orphan*/  st_shndx; } ;
struct TYPE_5__ {int sh_type; int sh_offset; } ;
typedef  TYPE_2__ Elf_Sym ;

/* Variables and functions */
 int FUNC0 (struct devtable*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int SHT_NOBITS ; 
 scalar_t__ STT_OBJECT ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct devtable* devtable ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,struct module*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,struct module*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,struct module*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct module*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,struct module*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 size_t FUNC9 (struct elf_info*,TYPE_2__*) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 int FUNC11 (char const*) ; 
 scalar_t__ FUNC12 (char const*,char*,int) ; 
 char* FUNC13 (char const*,char*) ; 
 scalar_t__ FUNC14 (char const*,unsigned int,char*) ; 

void FUNC15(struct module *mod, struct elf_info *info,
			Elf_Sym *sym, const char *symname)
{
	void *symval;
	char *zeros = NULL;
	const char *name, *identifier;
	unsigned int namelen;

	/* We're looking for a section relative symbol */
	if (!sym->st_shndx || FUNC9(info, sym) >= info->num_sections)
		return;

	/* We're looking for an object */
	if (FUNC1(sym->st_info) != STT_OBJECT)
		return;

	/* All our symbols are of form __mod_<name>__<identifier>_device_table. */
	if (FUNC12(symname, "__mod_", FUNC11("__mod_")))
		return;
	name = symname + FUNC11("__mod_");
	namelen = FUNC11(name);
	if (namelen < FUNC11("_device_table"))
		return;
	if (FUNC10(name + namelen - FUNC11("_device_table"), "_device_table"))
		return;
	identifier = FUNC13(name, "__");
	if (!identifier)
		return;
	namelen = identifier - name;

	/* Handle all-NULL symbols allocated into .bss */
	if (info->sechdrs[FUNC9(info, sym)].sh_type & SHT_NOBITS) {
		zeros = FUNC2(1, sym->st_size);
		symval = zeros;
	} else {
		symval = (void *)info->hdr
			+ info->sechdrs[FUNC9(info, sym)].sh_offset
			+ sym->st_value;
	}

	/* First handle the "special" cases */
	if (FUNC14(name, namelen, "usb"))
		FUNC7(symval, sym->st_size, mod);
	if (FUNC14(name, namelen, "of"))
		FUNC3(symval, sym->st_size, mod);
	else if (FUNC14(name, namelen, "pnp"))
		FUNC5(symval, sym->st_size, mod);
	else if (FUNC14(name, namelen, "pnp_card"))
		FUNC4(symval, sym->st_size, mod);
	else {
		int i;

		for (i = 0; i < FUNC0(devtable); i++) {
			const struct devtable *p = &devtable[i];

			if (FUNC14(name, namelen, p->device_id)) {
				FUNC6(symval, sym->st_size, p->id_size,
					 p->device_id, p->do_entry, mod);
				break;
			}
		}
	}
	FUNC8(zeros);
}