#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct zone {int dummy; } ;
struct scan_control {scalar_t__ nr_to_reclaim; int reclaim_idx; scalar_t__ nr_reclaimed; scalar_t__ nr_scanned; scalar_t__ order; } ;
struct TYPE_4__ {struct zone* node_zones; } ;
typedef  TYPE_1__ pg_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  SWAP_CLUSTER_MAX ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct zone*) ; 
 int /*<<< orphan*/  FUNC2 (struct zone*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct scan_control*) ; 

__attribute__((used)) static bool FUNC5(pg_data_t *pgdat,
			       struct scan_control *sc)
{
	struct zone *zone;
	int z;

	/* Reclaim a number of pages proportional to the number of zones */
	sc->nr_to_reclaim = 0;
	for (z = 0; z <= sc->reclaim_idx; z++) {
		zone = pgdat->node_zones + z;
		if (!FUNC2(zone))
			continue;

		sc->nr_to_reclaim += FUNC3(FUNC1(zone), SWAP_CLUSTER_MAX);
	}

	/*
	 * Historically care was taken to put equal pressure on all zones but
	 * now pressure is applied based on node LRU order.
	 */
	FUNC4(pgdat, sc);

	/*
	 * Fragmentation may mean that the system cannot be rebalanced for
	 * high-order allocations. If twice the allocation size has been
	 * reclaimed then recheck watermarks only at order-0 to prevent
	 * excessive reclaim. Assume that a process requested a high-order
	 * can direct reclaim/compact.
	 */
	if (sc->order && sc->nr_reclaimed >= FUNC0(sc->order))
		sc->order = 0;

	return sc->nr_scanned >= sc->nr_to_reclaim;
}