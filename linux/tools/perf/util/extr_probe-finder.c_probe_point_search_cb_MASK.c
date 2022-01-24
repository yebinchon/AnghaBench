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
struct probe_finder {scalar_t__ addr; int /*<<< orphan*/  lno; int /*<<< orphan*/  fname; TYPE_1__* pev; } ;
struct perf_probe_point {scalar_t__ offset; int /*<<< orphan*/  function; scalar_t__ lazy_line; scalar_t__ line; scalar_t__ file; } ;
struct dwarf_callback_param {int /*<<< orphan*/  retval; struct probe_finder* data; } ;
struct TYPE_4__ {int /*<<< orphan*/  no_inlines; } ;
struct TYPE_3__ {struct perf_probe_point point; } ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 int DWARF_CB_ABORT ; 
 int DWARF_CB_OK ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct probe_finder*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (struct probe_finder*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct probe_finder*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,...) ; 
 TYPE_2__ probe_conf ; 
 int /*<<< orphan*/  probe_point_inline_cb ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct probe_finder*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(Dwarf_Die *sp_die, void *data)
{
	struct dwarf_callback_param *param = data;
	struct probe_finder *pf = param->data;
	struct perf_probe_point *pp = &pf->pev->point;

	/* Check tag and diename */
	if (!FUNC1(sp_die) ||
	    !FUNC3(sp_die, pp->function))
		return DWARF_CB_OK;

	/* Check declared file */
	if (pp->file && FUNC15(pp->file, FUNC5(sp_die)))
		return DWARF_CB_OK;

	FUNC12("Matched function: %s [%lx]\n", FUNC7(sp_die),
		 (unsigned long)FUNC8(sp_die));
	pf->fname = FUNC5(sp_die);
	if (pp->line) { /* Function relative line */
		FUNC6(sp_die, &pf->lno);
		pf->lno += pp->line;
		param->retval = FUNC10(pf);
	} else if (FUNC2(sp_die)) {
		/* Instances always have the entry address */
		FUNC9(sp_die, &pf->addr);
		/* But in some case the entry address is 0 */
		if (pf->addr == 0) {
			FUNC12("%s has no entry PC. Skipped\n",
				 FUNC7(sp_die));
			param->retval = 0;
		/* Real function */
		} else if (pp->lazy_line)
			param->retval = FUNC11(sp_die, pf);
		else {
			FUNC13(sp_die, pf);
			pf->addr += pp->offset;
			/* TODO: Check the address in this function */
			param->retval = FUNC0(sp_die, pf);
		}
	} else if (!probe_conf.no_inlines) {
		/* Inlined function: search instances */
		param->retval = FUNC4(sp_die,
					probe_point_inline_cb, (void *)pf);
		/* This could be a non-existed inline definition */
		if (param->retval == -ENOENT)
			param->retval = 0;
	}

	/* We need to find other candidates */
	if (FUNC14(pp->function) && param->retval >= 0) {
		param->retval = 0;	/* We have to clear the result */
		return DWARF_CB_OK;
	}

	return DWARF_CB_ABORT; /* Exit; no same symbol in this CU. */
}