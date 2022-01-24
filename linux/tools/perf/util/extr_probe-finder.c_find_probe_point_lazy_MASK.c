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
struct probe_finder {TYPE_2__* pev; int /*<<< orphan*/  lcache; int /*<<< orphan*/  fname; int /*<<< orphan*/  cu_die; } ;
struct TYPE_3__ {int /*<<< orphan*/  lazy_line; } ;
struct TYPE_4__ {TYPE_1__ point; } ;
typedef  int /*<<< orphan*/  Dwarf_Die ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct probe_finder*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,char**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  probe_point_lazy_walker ; 

__attribute__((used)) static int FUNC7(Dwarf_Die *sp_die, struct probe_finder *pf)
{
	int ret = 0;
	char *fpath;

	if (FUNC5(pf->lcache)) {
		const char *comp_dir;

		comp_dir = FUNC0(&pf->cu_die);
		ret = FUNC4(pf->fname, comp_dir, &fpath);
		if (ret < 0) {
			FUNC6("Failed to find source file path.\n");
			return ret;
		}

		/* Matching lazy line pattern */
		ret = FUNC2(pf->lcache, fpath,
					    pf->pev->point.lazy_line);
		FUNC3(fpath);
		if (ret <= 0)
			return ret;
	}

	return FUNC1(sp_die, probe_point_lazy_walker, pf);
}