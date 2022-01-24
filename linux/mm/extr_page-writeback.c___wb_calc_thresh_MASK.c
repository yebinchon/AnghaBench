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
typedef  long u64 ;
struct wb_domain {int /*<<< orphan*/  completions; } ;
struct dirty_throttle_control {unsigned long thresh; int /*<<< orphan*/  wb; int /*<<< orphan*/  wb_completions; } ;

/* Variables and functions */
 int bdi_min_ratio ; 
 int /*<<< orphan*/  FUNC0 (long,long) ; 
 struct wb_domain* FUNC1 (struct dirty_throttle_control*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long*,long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long*,unsigned long*) ; 

__attribute__((used)) static unsigned long FUNC4(struct dirty_throttle_control *dtc)
{
	struct wb_domain *dom = FUNC1(dtc);
	unsigned long thresh = dtc->thresh;
	u64 wb_thresh;
	long numerator, denominator;
	unsigned long wb_min_ratio, wb_max_ratio;

	/*
	 * Calculate this BDI's share of the thresh ratio.
	 */
	FUNC2(&dom->completions, dtc->wb_completions,
			      &numerator, &denominator);

	wb_thresh = (thresh * (100 - bdi_min_ratio)) / 100;
	wb_thresh *= numerator;
	FUNC0(wb_thresh, denominator);

	FUNC3(dtc->wb, &wb_min_ratio, &wb_max_ratio);

	wb_thresh += (thresh * wb_min_ratio) / 100;
	if (wb_thresh > (thresh * wb_max_ratio) / 100)
		wb_thresh = thresh * wb_max_ratio / 100;

	return wb_thresh;
}