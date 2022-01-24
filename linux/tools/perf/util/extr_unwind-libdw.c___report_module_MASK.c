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
typedef  int /*<<< orphan*/  u64 ;
struct unwind_info {int /*<<< orphan*/  dwfl; int /*<<< orphan*/  thread; } ;
struct dso {scalar_t__ long_name; scalar_t__ symsrc_filename; int /*<<< orphan*/  short_name; } ;
struct addr_location {TYPE_1__* map; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ pgoff; struct dso* dso; } ;
typedef  int /*<<< orphan*/  Dwfl_Module ;
typedef  scalar_t__ Dwarf_Addr ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_RECORD_MISC_USER ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct addr_location*) ; 

__attribute__((used)) static int FUNC4(struct addr_location *al, u64 ip,
			    struct unwind_info *ui)
{
	Dwfl_Module *mod;
	struct dso *dso = NULL;
	/*
	 * Some callers will use al->sym, so we can't just use the
	 * cheaper thread__find_map() here.
	 */
	FUNC3(ui->thread, PERF_RECORD_MISC_USER, ip, al);

	if (al->map)
		dso = al->map->dso;

	if (!dso)
		return 0;

	mod = FUNC0(ui->dwfl, ip);
	if (mod) {
		Dwarf_Addr s;

		FUNC1(mod, NULL, &s, NULL, NULL, NULL, NULL, NULL);
		if (s != al->map->start - al->map->pgoff)
			mod = 0;
	}

	if (!mod)
		mod = FUNC2(ui->dwfl, dso->short_name,
				      (dso->symsrc_filename ? dso->symsrc_filename : dso->long_name), -1, al->map->start - al->map->pgoff,
				      false);

	return mod && FUNC0(ui->dwfl, ip) == mod ? 0 : -1;
}