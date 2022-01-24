#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct probe_finder {int /*<<< orphan*/  addr; int /*<<< orphan*/  machine; int /*<<< orphan*/  sp_die; int /*<<< orphan*/  fb_ops; } ;
struct local_vars_finder {size_t nargs; struct probe_finder* pf; TYPE_1__* args; int /*<<< orphan*/  ret; scalar_t__ vars; } ;
struct TYPE_2__ {char* var; } ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int DIE_FIND_CB_CONTINUE ; 
 int DIE_FIND_CB_END ; 
 int DIE_FIND_CB_SIBLING ; 
 int DW_TAG_formal_parameter ; 
 int DW_TAG_variable ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int FUNC5(Dwarf_Die *die_mem, void *data)
{
	struct local_vars_finder *vf = data;
	struct probe_finder *pf = vf->pf;
	int tag;

	tag = FUNC3(die_mem);
	if (tag == DW_TAG_formal_parameter ||
	    (tag == DW_TAG_variable && vf->vars)) {
		if (FUNC0(die_mem, vf->pf->addr,
					      vf->pf->fb_ops, &pf->sp_die,
					      pf->machine, NULL) == 0) {
			vf->args[vf->nargs].var = (char *)FUNC1(die_mem);
			if (vf->args[vf->nargs].var == NULL) {
				vf->ret = -ENOMEM;
				return DIE_FIND_CB_END;
			}
			FUNC4(" %s", vf->args[vf->nargs].var);
			vf->nargs++;
		}
	}

	if (FUNC2(die_mem, vf->pf->addr))
		return DIE_FIND_CB_CONTINUE;
	else
		return DIE_FIND_CB_SIBLING;
}