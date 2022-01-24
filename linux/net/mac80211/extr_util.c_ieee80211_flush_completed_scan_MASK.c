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
struct ieee80211_local {int /*<<< orphan*/  scan_work; int /*<<< orphan*/  hw; int /*<<< orphan*/  scanning; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCAN_ABORTED ; 
 int /*<<< orphan*/  SCAN_COMPLETED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_local *local,
					   bool aborted)
{
	/* It's possible that we don't handle the scan completion in
	 * time during suspend, so if it's still marked as completed
	 * here, queue the work and flush it to clean things up.
	 * Instead of calling the worker function directly here, we
	 * really queue it to avoid potential races with other flows
	 * scheduling the same work.
	 */
	if (FUNC3(SCAN_COMPLETED, &local->scanning)) {
		/* If coming from reconfiguration failure, abort the scan so
		 * we don't attempt to continue a partial HW scan - which is
		 * possible otherwise if (e.g.) the 2.4 GHz portion was the
		 * completed scan, and a 5 GHz portion is still pending.
		 */
		if (aborted)
			FUNC2(SCAN_ABORTED, &local->scanning);
		FUNC1(&local->hw, &local->scan_work, 0);
		FUNC0(&local->scan_work);
	}
}