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
struct zonelist {int dummy; } ;
struct scan_control {int order; scalar_t__ priority; int may_writepage; int may_unmap; int may_swap; int /*<<< orphan*/  gfp_mask; int /*<<< orphan*/  reclaim_state; int /*<<< orphan*/ * nodemask; int /*<<< orphan*/  reclaim_idx; int /*<<< orphan*/  nr_to_reclaim; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DEF_PRIORITY ; 
 scalar_t__ MAX_NR_ZONES ; 
 scalar_t__ MAX_ORDER ; 
 scalar_t__ S8_MAX ; 
 int /*<<< orphan*/  SWAP_CLUSTER_MAX ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct zonelist*,struct scan_control*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  laptop_mode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct zonelist*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 

unsigned long FUNC8(struct zonelist *zonelist, int order,
				gfp_t gfp_mask, nodemask_t *nodemask)
{
	unsigned long nr_reclaimed;
	struct scan_control sc = {
		.nr_to_reclaim = SWAP_CLUSTER_MAX,
		.gfp_mask = FUNC1(gfp_mask),
		.reclaim_idx = FUNC3(gfp_mask),
		.order = order,
		.nodemask = nodemask,
		.priority = DEF_PRIORITY,
		.may_writepage = !laptop_mode,
		.may_unmap = 1,
		.may_swap = 1,
	};

	/*
	 * scan_control uses s8 fields for order, priority, and reclaim_idx.
	 * Confirm they are large enough for max values.
	 */
	FUNC0(MAX_ORDER > S8_MAX);
	FUNC0(DEF_PRIORITY > S8_MAX);
	FUNC0(MAX_NR_ZONES > S8_MAX);

	/*
	 * Do not enter reclaim if fatal signal was delivered while throttled.
	 * 1 is returned so that the page allocator does not OOM kill at this
	 * point.
	 */
	if (FUNC5(sc.gfp_mask, zonelist, nodemask))
		return 1;

	FUNC4(current, &sc.reclaim_state);
	FUNC6(order, sc.gfp_mask);

	nr_reclaimed = FUNC2(zonelist, &sc);

	FUNC7(nr_reclaimed);
	FUNC4(current, NULL);

	return nr_reclaimed;
}