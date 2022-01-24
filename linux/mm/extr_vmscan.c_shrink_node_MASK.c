#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ writeback; scalar_t__ taken; scalar_t__ dirty; scalar_t__ congested; scalar_t__ unqueued_dirty; scalar_t__ file_taken; scalar_t__ immediate; } ;
struct scan_control {unsigned long nr_reclaimed; unsigned long nr_scanned; int memcg_low_skipped; int /*<<< orphan*/  hibernation_mode; TYPE_7__ nr; struct mem_cgroup* target_mem_cgroup; int /*<<< orphan*/  gfp_mask; int /*<<< orphan*/  priority; int /*<<< orphan*/  memcg_low_reclaim; } ;
struct reclaim_state {unsigned long reclaimed_slab; } ;
struct mem_cgroup {int dummy; } ;
struct TYPE_9__ {scalar_t__ kswapd_failures; int /*<<< orphan*/  flags; int /*<<< orphan*/  node_id; } ;
typedef  TYPE_1__ pg_data_t ;
struct TYPE_11__ {struct reclaim_state* reclaim_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_RW_ASYNC ; 
 int HZ ; 
 int /*<<< orphan*/  MEMCG_LOW ; 
#define  MEMCG_PROT_LOW 130 
#define  MEMCG_PROT_MIN 129 
#define  MEMCG_PROT_NONE 128 
 int /*<<< orphan*/  PGDAT_CONGESTED ; 
 int /*<<< orphan*/  PGDAT_DIRTY ; 
 int /*<<< orphan*/  PGDAT_WRITEBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_8__* current ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct scan_control*) ; 
 struct mem_cgroup* FUNC4 (struct mem_cgroup*,struct mem_cgroup*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct mem_cgroup*,struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC6 (struct mem_cgroup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (TYPE_1__*,struct mem_cgroup*) ; 
 scalar_t__ FUNC9 (struct scan_control*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct mem_cgroup*,int) ; 
 scalar_t__ FUNC12 (TYPE_1__*,unsigned long,struct scan_control*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,struct mem_cgroup*,struct scan_control*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mem_cgroup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct mem_cgroup*,int,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC17(pg_data_t *pgdat, struct scan_control *sc)
{
	struct reclaim_state *reclaim_state = current->reclaim_state;
	unsigned long nr_reclaimed, nr_scanned;
	bool reclaimable = false;

	do {
		struct mem_cgroup *root = sc->target_mem_cgroup;
		unsigned long node_lru_pages = 0;
		struct mem_cgroup *memcg;

		FUNC7(&sc->nr, 0, sizeof(sc->nr));

		nr_reclaimed = sc->nr_reclaimed;
		nr_scanned = sc->nr_scanned;

		memcg = FUNC4(root, NULL, NULL);
		do {
			unsigned long lru_pages;
			unsigned long reclaimed;
			unsigned long scanned;

			switch (FUNC5(root, memcg)) {
			case MEMCG_PROT_MIN:
				/*
				 * Hard protection.
				 * If there is no reclaimable memory, OOM.
				 */
				continue;
			case MEMCG_PROT_LOW:
				/*
				 * Soft protection.
				 * Respect the protection only as long as
				 * there is an unprotected supply
				 * of reclaimable memory from other cgroups.
				 */
				if (!sc->memcg_low_reclaim) {
					sc->memcg_low_skipped = 1;
					continue;
				}
				FUNC6(memcg, MEMCG_LOW);
				break;
			case MEMCG_PROT_NONE:
				/*
				 * All protection thresholds breached. We may
				 * still choose to vary the scan pressure
				 * applied based on by how much the cgroup in
				 * question has exceeded its protection
				 * thresholds (see get_scan_count).
				 */
				break;
			}

			reclaimed = sc->nr_reclaimed;
			scanned = sc->nr_scanned;
			FUNC13(pgdat, memcg, sc, &lru_pages);
			node_lru_pages += lru_pages;

			FUNC14(sc->gfp_mask, pgdat->node_id, memcg,
					sc->priority);

			/* Record the group's reclaim efficiency */
			FUNC15(sc->gfp_mask, memcg, false,
				   sc->nr_scanned - scanned,
				   sc->nr_reclaimed - reclaimed);

		} while ((memcg = FUNC4(root, memcg, NULL)));

		if (reclaim_state) {
			sc->nr_reclaimed += reclaim_state->reclaimed_slab;
			reclaim_state->reclaimed_slab = 0;
		}

		/* Record the subtree's reclaim efficiency */
		FUNC15(sc->gfp_mask, sc->target_mem_cgroup, true,
			   sc->nr_scanned - nr_scanned,
			   sc->nr_reclaimed - nr_reclaimed);

		if (sc->nr_reclaimed - nr_reclaimed)
			reclaimable = true;

		if (FUNC1()) {
			/*
			 * If reclaim is isolating dirty pages under writeback,
			 * it implies that the long-lived page allocation rate
			 * is exceeding the page laundering rate. Either the
			 * global limits are not being effective at throttling
			 * processes due to the page distribution throughout
			 * zones or there is heavy usage of a slow backing
			 * device. The only option is to throttle from reclaim
			 * context which is not ideal as there is no guarantee
			 * the dirtying process is throttled in the same way
			 * balance_dirty_pages() manages.
			 *
			 * Once a node is flagged PGDAT_WRITEBACK, kswapd will
			 * count the number of pages under pages flagged for
			 * immediate reclaim and stall if any are encountered
			 * in the nr_immediate check below.
			 */
			if (sc->nr.writeback && sc->nr.writeback == sc->nr.taken)
				FUNC10(PGDAT_WRITEBACK, &pgdat->flags);

			/*
			 * Tag a node as congested if all the dirty pages
			 * scanned were backed by a congested BDI and
			 * wait_iff_congested will stall.
			 */
			if (sc->nr.dirty && sc->nr.dirty == sc->nr.congested)
				FUNC10(PGDAT_CONGESTED, &pgdat->flags);

			/* Allow kswapd to start writing pages during reclaim.*/
			if (sc->nr.unqueued_dirty == sc->nr.file_taken)
				FUNC10(PGDAT_DIRTY, &pgdat->flags);

			/*
			 * If kswapd scans pages marked marked for immediate
			 * reclaim and under writeback (nr_immediate), it
			 * implies that pages are cycling through the LRU
			 * faster than they are written so also forcibly stall.
			 */
			if (sc->nr.immediate)
				FUNC0(BLK_RW_ASYNC, HZ/10);
		}

		/*
		 * Legacy memcg will stall in page writeback so avoid forcibly
		 * stalling in wait_iff_congested().
		 */
		if (!FUNC3(sc) && FUNC9(sc) &&
		    sc->nr.dirty && sc->nr.dirty == sc->nr.congested)
			FUNC11(pgdat, root, true);

		/*
		 * Stall direct reclaim for IO completions if underlying BDIs
		 * and node is congested. Allow kswapd to continue until it
		 * starts encountering unqueued dirty pages or cycling through
		 * the LRU too quickly.
		 */
		if (!sc->hibernation_mode && !FUNC1() &&
		   FUNC2() && FUNC8(pgdat, root))
			FUNC16(BLK_RW_ASYNC, HZ/10);

	} while (FUNC12(pgdat, sc->nr_reclaimed - nr_reclaimed,
					 sc));

	/*
	 * Kswapd gives up on balancing particular nodes after too
	 * many failures to reclaim anything from them and goes to
	 * sleep. On reclaim progress, reset the failure counter. A
	 * successful direct reclaim run will revive a dormant kswapd.
	 */
	if (reclaimable)
		pgdat->kswapd_failures = 0;

	return reclaimable;
}