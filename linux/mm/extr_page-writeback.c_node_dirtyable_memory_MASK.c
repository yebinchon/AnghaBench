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
struct zone {int dummy; } ;
struct pglist_data {int /*<<< orphan*/  totalreserve_pages; struct zone* node_zones; } ;

/* Variables and functions */
 int MAX_NR_ZONES ; 
 int /*<<< orphan*/  NR_ACTIVE_FILE ; 
 int /*<<< orphan*/  NR_FREE_PAGES ; 
 int /*<<< orphan*/  NR_INACTIVE_FILE ; 
 scalar_t__ FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pglist_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zone*) ; 
 scalar_t__ FUNC3 (struct zone*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC4(struct pglist_data *pgdat)
{
	unsigned long nr_pages = 0;
	int z;

	for (z = 0; z < MAX_NR_ZONES; z++) {
		struct zone *zone = pgdat->node_zones + z;

		if (!FUNC2(zone))
			continue;

		nr_pages += FUNC3(zone, NR_FREE_PAGES);
	}

	/*
	 * Pages reserved for the kernel should not be considered
	 * dirtyable, to prevent a situation where reclaim has to
	 * clean pages in order to balance the zones.
	 */
	nr_pages -= FUNC0(nr_pages, pgdat->totalreserve_pages);

	nr_pages += FUNC1(pgdat, NR_INACTIVE_FILE);
	nr_pages += FUNC1(pgdat, NR_ACTIVE_FILE);

	return nr_pages;
}