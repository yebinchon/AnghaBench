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
struct ieee80211_local {int in_reconfig; int /*<<< orphan*/  restart_work; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_MAX_QUEUE_MAP ; 
 int /*<<< orphan*/  IEEE80211_QUEUE_STOP_REASON_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct ieee80211_local* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_freezable_wq ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

void FUNC6(struct ieee80211_hw *hw)
{
	struct ieee80211_local *local = FUNC1(hw);

	FUNC4(local);

	FUNC5(hw->wiphy,
		   "Hardware restart was requested\n");

	/* use this reason, ieee80211_reconfig will unblock it */
	FUNC2(hw, IEEE80211_MAX_QUEUE_MAP,
					IEEE80211_QUEUE_STOP_REASON_SUSPEND,
					false);

	/*
	 * Stop all Rx during the reconfig. We don't want state changes
	 * or driver callbacks while this is in progress.
	 */
	local->in_reconfig = true;
	FUNC0();

	FUNC3(system_freezable_wq, &local->restart_work);
}