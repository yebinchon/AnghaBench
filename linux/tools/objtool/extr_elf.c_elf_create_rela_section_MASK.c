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
struct TYPE_3__ {int sh_addralign; int /*<<< orphan*/  sh_flags; int /*<<< orphan*/  sh_info; int /*<<< orphan*/  sh_link; int /*<<< orphan*/  sh_type; } ;
struct section {char* name; TYPE_1__ sh; int /*<<< orphan*/  idx; struct section* base; struct section* rela; } ;
struct elf {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  idx; } ;
typedef  int /*<<< orphan*/  GElf_Rela ;

/* Variables and functions */
 int /*<<< orphan*/  SHF_INFO_LINK ; 
 int /*<<< orphan*/  SHT_RELA ; 
 struct section* FUNC0 (struct elf*,char*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct elf*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*) ; 

struct section *FUNC8(struct elf *elf, struct section *base)
{
	char *relaname;
	struct section *sec;

	relaname = FUNC3(FUNC7(base->name) + FUNC7(".rela") + 1);
	if (!relaname) {
		FUNC4("malloc");
		return NULL;
	}
	FUNC6(relaname, ".rela");
	FUNC5(relaname, base->name);

	sec = FUNC0(elf, relaname, sizeof(GElf_Rela), 0);
	FUNC2(relaname);
	if (!sec)
		return NULL;

	base->rela = sec;
	sec->base = base;

	sec->sh.sh_type = SHT_RELA;
	sec->sh.sh_addralign = 8;
	sec->sh.sh_link = FUNC1(elf, ".symtab")->idx;
	sec->sh.sh_info = base->idx;
	sec->sh.sh_flags = SHF_INFO_LINK;

	return sec;
}