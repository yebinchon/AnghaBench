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
struct wb_domain {unsigned long dirty_limit_tstamp; int /*<<< orphan*/  lock; } ;
struct dirty_throttle_control {int dummy; } ;

/* Variables and functions */
 scalar_t__ BANDWIDTH_INTERVAL ; 
 struct wb_domain* FUNC0 (struct dirty_throttle_control*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (unsigned long,scalar_t__) ; 
 scalar_t__ FUNC4 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct dirty_throttle_control*) ; 

__attribute__((used)) static void FUNC6(struct dirty_throttle_control *dtc,
				    unsigned long now)
{
	struct wb_domain *dom = FUNC0(dtc);

	/*
	 * check locklessly first to optimize away locking for the most time
	 */
	if (FUNC4(now, dom->dirty_limit_tstamp + BANDWIDTH_INTERVAL))
		return;

	FUNC1(&dom->lock);
	if (FUNC3(now, dom->dirty_limit_tstamp + BANDWIDTH_INTERVAL)) {
		FUNC5(dtc);
		dom->dirty_limit_tstamp = now;
	}
	FUNC2(&dom->lock);
}