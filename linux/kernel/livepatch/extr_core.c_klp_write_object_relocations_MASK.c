#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  strtab; } ;
struct module {TYPE_3__* klp_info; TYPE_2__ core_kallsyms; } ;
struct klp_object {char* name; } ;
struct TYPE_10__ {int sh_name; int sh_flags; } ;
struct TYPE_7__ {int e_shnum; } ;
struct TYPE_9__ {char* secstrings; int /*<<< orphan*/  symndx; TYPE_4__* sechdrs; TYPE_1__ hdr; } ;
typedef  TYPE_4__ Elf_Shdr ;

/* Variables and functions */
 int EINVAL ; 
 int MODULE_NAME_LEN ; 
 int SHF_RELA_LIVEPATCH ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct module*) ; 
 scalar_t__ FUNC2 (struct klp_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct klp_object*) ; 
 int FUNC4 (TYPE_4__*,struct module*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int FUNC6 (char const*,char*,char*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8(struct module *pmod,
					struct klp_object *obj)
{
	int i, cnt, ret = 0;
	const char *objname, *secname;
	char sec_objname[MODULE_NAME_LEN];
	Elf_Shdr *sec;

	if (FUNC0(!FUNC3(obj)))
		return -EINVAL;

	objname = FUNC2(obj) ? obj->name : "vmlinux";

	/* For each klp relocation section */
	for (i = 1; i < pmod->klp_info->hdr.e_shnum; i++) {
		sec = pmod->klp_info->sechdrs + i;
		secname = pmod->klp_info->secstrings + sec->sh_name;
		if (!(sec->sh_flags & SHF_RELA_LIVEPATCH))
			continue;

		/*
		 * Format: .klp.rela.sec_objname.section_name
		 * See comment in klp_resolve_symbols() for an explanation
		 * of the selected field width value.
		 */
		cnt = FUNC6(secname, ".klp.rela.%55[^.]", sec_objname);
		if (cnt != 1) {
			FUNC5("section %s has an incorrectly formatted name\n",
			       secname);
			ret = -EINVAL;
			break;
		}

		if (FUNC7(objname, sec_objname))
			continue;

		ret = FUNC4(sec, pmod);
		if (ret)
			break;

		ret = FUNC1(pmod->klp_info->sechdrs,
					 pmod->core_kallsyms.strtab,
					 pmod->klp_info->symndx, i, pmod);
		if (ret)
			break;
	}

	return ret;
}