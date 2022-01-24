#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct zone {TYPE_1__* zone_pgdat; } ;
struct TYPE_5__ {scalar_t__ kswapd_classzone_idx; int kswapd_order; scalar_t__ kswapd_failures; int /*<<< orphan*/  kswapd_wait; int /*<<< orphan*/  node_id; } ;
typedef  TYPE_1__ pg_data_t ;
typedef  int gfp_t ;
typedef  enum zone_type { ____Placeholder_zone_type } zone_type ;

/* Variables and functions */
 scalar_t__ MAX_NR_ZONES ; 
 scalar_t__ MAX_RECLAIM_RETRIES ; 
 int __GFP_DIRECT_RECLAIM ; 
 int /*<<< orphan*/  FUNC0 (struct zone*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct zone*) ; 
 void* FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int) ; 

void FUNC9(struct zone *zone, gfp_t gfp_flags, int order,
		   enum zone_type classzone_idx)
{
	pg_data_t *pgdat;

	if (!FUNC1(zone))
		return;

	if (!FUNC0(zone, gfp_flags))
		return;
	pgdat = zone->zone_pgdat;

	if (pgdat->kswapd_classzone_idx == MAX_NR_ZONES)
		pgdat->kswapd_classzone_idx = classzone_idx;
	else
		pgdat->kswapd_classzone_idx = FUNC2(pgdat->kswapd_classzone_idx,
						  classzone_idx);
	pgdat->kswapd_order = FUNC2(pgdat->kswapd_order, order);
	if (!FUNC6(&pgdat->kswapd_wait))
		return;

	/* Hopeless node, leave it to direct reclaim if possible */
	if (pgdat->kswapd_failures >= MAX_RECLAIM_RETRIES ||
	    (FUNC3(pgdat, order, classzone_idx) &&
	     !FUNC4(pgdat, classzone_idx))) {
		/*
		 * There may be plenty of free memory available, but it's too
		 * fragmented for high-order allocations.  Wake up kcompactd
		 * and rely on compaction_suitable() to determine if it's
		 * needed.  If it fails, it will defer subsequent attempts to
		 * ratelimit its work.
		 */
		if (!(gfp_flags & __GFP_DIRECT_RECLAIM))
			FUNC8(pgdat, order, classzone_idx);
		return;
	}

	FUNC5(pgdat->node_id, classzone_idx, order,
				      gfp_flags);
	FUNC7(&pgdat->kswapd_wait);
}