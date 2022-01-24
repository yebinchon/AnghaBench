#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct perf_probe_point {int line; unsigned long offset; int /*<<< orphan*/ * function; int /*<<< orphan*/ * file; } ;
struct debuginfo {int /*<<< orphan*/  dbg; } ;
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  unsigned long Dwarf_Addr ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long,char const**,int*) ; 
 scalar_t__ FUNC1 (struct debuginfo*,unsigned long*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int*) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC11 (char*,unsigned long) ; 
 scalar_t__ FUNC12 (char const*,char const*) ; 
 void* FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **) ; 

int FUNC15(struct debuginfo *dbg, unsigned long addr,
				struct perf_probe_point *ppt)
{
	Dwarf_Die cudie, spdie, indie;
	Dwarf_Addr _addr = 0, baseaddr = 0;
	const char *fname = NULL, *func = NULL, *basefunc = NULL, *tmp;
	int baseline = 0, lineno = 0, ret = 0;

	/* We always need to relocate the address for aranges */
	if (FUNC1(dbg, &baseaddr, false) == 0)
		addr += baseaddr;
	/* Find cu die */
	if (!FUNC6(dbg->dbg, (Dwarf_Addr)addr, &cudie)) {
		FUNC11("Failed to find debug information for address %lx\n",
			   addr);
		ret = -EINVAL;
		goto end;
	}

	/* Find a corresponding line (filename and lineno) */
	FUNC0(&cudie, addr, &fname, &lineno);
	/* Don't care whether it failed or not */

	/* Find a corresponding function (name, baseline and baseaddr) */
	if (FUNC2(&cudie, (Dwarf_Addr)addr, &spdie)) {
		/* Get function entry information */
		func = basefunc = FUNC9(&spdie);
		if (!func ||
		    FUNC10(&spdie, &baseaddr) != 0 ||
		    FUNC8(&spdie, &baseline) != 0) {
			lineno = 0;
			goto post;
		}

		fname = FUNC7(&spdie);
		if (addr == (unsigned long)baseaddr) {
			/* Function entry - Relative line number is 0 */
			lineno = baseline;
			goto post;
		}

		/* Track down the inline functions step by step */
		while (FUNC3(&spdie, (Dwarf_Addr)addr,
						&indie)) {
			/* There is an inline function */
			if (FUNC10(&indie, &_addr) == 0 &&
			    _addr == addr) {
				/*
				 * addr is at an inline function entry.
				 * In this case, lineno should be the call-site
				 * line number. (overwrite lineinfo)
				 */
				lineno = FUNC5(&indie);
				fname = FUNC4(&indie);
				break;
			} else {
				/*
				 * addr is in an inline function body.
				 * Since lineno points one of the lines
				 * of the inline function, baseline should
				 * be the entry line of the inline function.
				 */
				tmp = FUNC9(&indie);
				if (!tmp ||
				    FUNC8(&indie, &baseline) != 0)
					break;
				func = tmp;
				spdie = indie;
			}
		}
		/* Verify the lineno and baseline are in a same file */
		tmp = FUNC7(&spdie);
		if (!tmp || FUNC12(tmp, fname) != 0)
			lineno = 0;
	}

post:
	/* Make a relative line number or an offset */
	if (lineno)
		ppt->line = lineno - baseline;
	else if (basefunc) {
		ppt->offset = addr - (unsigned long)baseaddr;
		func = basefunc;
	}

	/* Duplicate strings */
	if (func) {
		ppt->function = FUNC13(func);
		if (ppt->function == NULL) {
			ret = -ENOMEM;
			goto end;
		}
	}
	if (fname) {
		ppt->file = FUNC13(fname);
		if (ppt->file == NULL) {
			FUNC14(&ppt->function);
			ret = -ENOMEM;
			goto end;
		}
	}
end:
	if (ret == 0 && (fname || func))
		ret = 1;	/* Found a point */
	return ret;
}