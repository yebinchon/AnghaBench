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
struct probe_finder {TYPE_1__* pvar; int /*<<< orphan*/  cu_die; int /*<<< orphan*/  addr; TYPE_2__* tvar; } ;
struct TYPE_5__ {char* name; } ;
struct TYPE_4__ {int /*<<< orphan*/  var; scalar_t__ name; } ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ *,struct probe_finder*) ; 
 int FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,char) ; 
 char* FUNC7 (scalar_t__) ; 
 char* FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(Dwarf_Die *sc_die, struct probe_finder *pf)
{
	Dwarf_Die vr_die;
	char *buf, *ptr;
	int ret = 0;

	/* Copy raw parameters */
	if (!FUNC3(pf->pvar->var))
		return FUNC1(pf->tvar, pf->pvar);

	if (pf->pvar->name)
		pf->tvar->name = FUNC7(pf->pvar->name);
	else {
		buf = FUNC8(pf->pvar);
		if (!buf)
			return -ENOMEM;
		ptr = FUNC6(buf, ':');	/* Change type separator to _ */
		if (ptr)
			*ptr = '_';
		pf->tvar->name = buf;
	}
	if (pf->tvar->name == NULL)
		return -ENOMEM;

	FUNC4("Searching '%s' variable in context.\n", pf->pvar->var);
	/* Search child die for local variables and parameters. */
	if (!FUNC2(sc_die, pf->pvar->var, pf->addr, &vr_die)) {
		/* Search again in global variables */
		if (!FUNC2(&pf->cu_die, pf->pvar->var,
						0, &vr_die)) {
			FUNC5("Failed to find '%s' in this function.\n",
				   pf->pvar->var);
			ret = -ENOENT;
		}
	}
	if (ret >= 0)
		ret = FUNC0(&vr_die, pf);

	return ret;
}