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
struct scan_control {int reclaim_idx; int /*<<< orphan*/  order; } ;
struct pglist_data {struct zone* node_zones; } ;

/* Variables and functions */
#define  COMPACT_CONTINUE 129 
#define  COMPACT_SUCCESS 128 
 int /*<<< orphan*/  NR_INACTIVE_ANON ; 
 int /*<<< orphan*/  NR_INACTIVE_FILE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct zone*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct scan_control*) ; 
 int /*<<< orphan*/  FUNC4 (struct zone*) ; 
 unsigned long FUNC5 (struct pglist_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC6(struct pglist_data *pgdat,
					unsigned long nr_reclaimed,
					struct scan_control *sc)
{
	unsigned long pages_for_compaction;
	unsigned long inactive_lru_pages;
	int z;

	/* If not in reclaim/compaction mode, stop */
	if (!FUNC3(sc))
		return false;

	/*
	 * Stop if we failed to reclaim any pages from the last SWAP_CLUSTER_MAX
	 * number of pages that were scanned. This will return to the caller
	 * with the risk reclaim/compaction and the resulting allocation attempt
	 * fails. In the past we have tried harder for __GFP_RETRY_MAYFAIL
	 * allocations through requiring that the full LRU list has been scanned
	 * first, by assuming that zero delta of sc->nr_scanned means full LRU
	 * scan, but that approximation was wrong, and there were corner cases
	 * where always a non-zero amount of pages were scanned.
	 */
	if (!nr_reclaimed)
		return false;

	/* If compaction would go ahead or the allocation would succeed, stop */
	for (z = 0; z <= sc->reclaim_idx; z++) {
		struct zone *zone = &pgdat->node_zones[z];
		if (!FUNC4(zone))
			continue;

		switch (FUNC1(zone, sc->order, 0, sc->reclaim_idx)) {
		case COMPACT_SUCCESS:
		case COMPACT_CONTINUE:
			return false;
		default:
			/* check next zone */
			;
		}
	}

	/*
	 * If we have not reclaimed enough pages for compaction and the
	 * inactive lists are large enough, continue reclaiming
	 */
	pages_for_compaction = FUNC0(sc->order);
	inactive_lru_pages = FUNC5(pgdat, NR_INACTIVE_FILE);
	if (FUNC2() > 0)
		inactive_lru_pages += FUNC5(pgdat, NR_INACTIVE_ANON);

	return inactive_lru_pages > pages_for_compaction;
}