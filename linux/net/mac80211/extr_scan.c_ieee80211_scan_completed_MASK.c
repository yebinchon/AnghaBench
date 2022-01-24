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
struct ieee80211_local {int /*<<< orphan*/  scan_work; int /*<<< orphan*/  hw; int /*<<< orphan*/  scan_info; int /*<<< orphan*/  scanning; } ;
struct ieee80211_hw {int dummy; } ;
struct cfg80211_scan_info {int /*<<< orphan*/  aborted; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCAN_ABORTED ; 
 int /*<<< orphan*/  SCAN_COMPLETED ; 
 struct ieee80211_local* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cfg80211_scan_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_local*,int /*<<< orphan*/ ) ; 

void FUNC5(struct ieee80211_hw *hw,
			      struct cfg80211_scan_info *info)
{
	struct ieee80211_local *local = FUNC0(hw);

	FUNC4(local, info->aborted);

	FUNC3(SCAN_COMPLETED, &local->scanning);
	if (info->aborted)
		FUNC3(SCAN_ABORTED, &local->scanning);

	FUNC2(&local->scan_info, info, sizeof(*info));

	FUNC1(&local->hw, &local->scan_work, 0);
}