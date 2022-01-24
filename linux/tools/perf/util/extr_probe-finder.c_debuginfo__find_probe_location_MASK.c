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
struct pubname_callback_param {scalar_t__ found; int /*<<< orphan*/ * sp_die; int /*<<< orphan*/ * cu_die; scalar_t__ file; scalar_t__ function; } ;
struct probe_finder {int /*<<< orphan*/ * lcache; int /*<<< orphan*/  lno; int /*<<< orphan*/  cu_die; int /*<<< orphan*/ * fname; int /*<<< orphan*/  sp_die; TYPE_1__* pev; } ;
struct perf_probe_point {int /*<<< orphan*/  line; scalar_t__ lazy_line; scalar_t__ function; scalar_t__ file; } ;
struct dwarf_callback_param {struct probe_finder* data; } ;
struct debuginfo {int /*<<< orphan*/  dbg; } ;
struct TYPE_2__ {struct perf_probe_point point; } ;
typedef  scalar_t__ Dwarf_Off ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pubname_callback_param*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct probe_finder*) ; 
 int FUNC5 (struct probe_finder*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct probe_finder*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct dwarf_callback_param*) ; 
 int /*<<< orphan*/  pubname_search_cb ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct debuginfo *dbg,
				  struct probe_finder *pf)
{
	struct perf_probe_point *pp = &pf->pev->point;
	Dwarf_Off off, noff;
	size_t cuhl;
	Dwarf_Die *diep;
	int ret = 0;

	off = 0;
	pf->lcache = FUNC8(NULL);
	if (!pf->lcache)
		return -ENOMEM;

	/* Fastpath: lookup by function name from .debug_pubnames section */
	if (pp->function && !FUNC10(pp->function)) {
		struct pubname_callback_param pubname_param = {
			.function = pp->function,
			.file	  = pp->file,
			.cu_die	  = &pf->cu_die,
			.sp_die	  = &pf->sp_die,
			.found	  = 0,
		};
		struct dwarf_callback_param probe_param = {
			.data = pf,
		};

		FUNC1(dbg->dbg, pubname_search_cb,
				  &pubname_param, 0);
		if (pubname_param.found) {
			ret = FUNC9(&pf->sp_die, &probe_param);
			if (ret)
				goto found;
		}
	}

	/* Loop on CUs (Compilation Unit) */
	while (!FUNC2(dbg->dbg, off, &noff, &cuhl, NULL, NULL, NULL)) {
		/* Get the DIE(Debugging Information Entry) of this CU */
		diep = FUNC3(dbg->dbg, off + cuhl, &pf->cu_die);
		if (!diep)
			continue;

		/* Check if target file is included. */
		if (pp->file)
			pf->fname = FUNC0(&pf->cu_die, pp->file);
		else
			pf->fname = NULL;

		if (!pp->file || pf->fname) {
			if (pp->function)
				ret = FUNC4(pf);
			else if (pp->lazy_line)
				ret = FUNC6(&pf->cu_die, pf);
			else {
				pf->lno = pp->line;
				ret = FUNC5(pf);
			}
			if (ret < 0)
				break;
		}
		off = noff;
	}

found:
	FUNC7(pf->lcache);
	pf->lcache = NULL;

	return ret;
}