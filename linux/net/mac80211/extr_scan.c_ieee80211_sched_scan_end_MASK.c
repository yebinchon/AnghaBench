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
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;
struct ieee80211_local {TYPE_1__ hw; int /*<<< orphan*/  mtx; int /*<<< orphan*/  sched_scan_req; int /*<<< orphan*/  sched_scan_sdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct ieee80211_local *local)
{
	FUNC2(&local->mtx);

	if (!FUNC4(local->sched_scan_sdata)) {
		FUNC3(&local->mtx);
		return;
	}

	FUNC0(local->sched_scan_sdata, NULL);

	/* If sched scan was aborted by the driver. */
	FUNC0(local->sched_scan_req, NULL);

	FUNC3(&local->mtx);

	FUNC1(local->hw.wiphy, 0);
}