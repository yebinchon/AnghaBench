#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct probe_finder {TYPE_1__* pvar; TYPE_2__* tvar; int /*<<< orphan*/  machine; int /*<<< orphan*/  sp_die; int /*<<< orphan*/  fb_ops; int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  ref; } ;
struct TYPE_4__ {int /*<<< orphan*/  user_access; int /*<<< orphan*/  type; scalar_t__ field; int /*<<< orphan*/  var; } ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOTSUP ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int FUNC6(Dwarf_Die *vr_die, struct probe_finder *pf)
{
	Dwarf_Die die_mem;
	int ret;

	FUNC4("Converting variable %s into trace event.\n",
		 FUNC3(vr_die));

	ret = FUNC1(vr_die, pf->addr, pf->fb_ops,
					&pf->sp_die, pf->machine, pf->tvar);
	if (ret == -ENOENT || ret == -EINVAL) {
		FUNC5("Failed to find the location of the '%s' variable at this address.\n"
		       " Perhaps it has been optimized out.\n"
		       " Use -V with the --range option to show '%s' location range.\n",
		       pf->pvar->var, pf->pvar->var);
	} else if (ret == -ENOTSUP)
		FUNC5("Sorry, we don't support this variable location yet.\n");
	else if (ret == 0 && pf->pvar->field) {
		ret = FUNC0(vr_die, pf->pvar->var,
					      pf->pvar->field, &pf->tvar->ref,
					      &die_mem, pf->pvar->user_access);
		vr_die = &die_mem;
	}
	if (ret == 0)
		ret = FUNC2(vr_die, pf->tvar, pf->pvar->type,
					    pf->pvar->user_access);
	/* *expr will be cached in libdw. Don't free it. */
	return ret;
}