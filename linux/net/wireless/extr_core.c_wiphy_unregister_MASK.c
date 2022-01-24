#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wiphy {int dummy; } ;
struct TYPE_3__ {int registered; scalar_t__ wowlan_config; int /*<<< orphan*/  dev; int /*<<< orphan*/  debugfsdir; int /*<<< orphan*/  wdev_list; } ;
struct cfg80211_registered_device {int opencount; TYPE_2__* ops; TYPE_1__ wiphy; int /*<<< orphan*/  propagate_cac_done_wk; int /*<<< orphan*/  propagate_radar_detect_wk; int /*<<< orphan*/  mlme_unreg_wk; int /*<<< orphan*/  sched_scan_stop_wk; int /*<<< orphan*/  destroy_work; int /*<<< orphan*/  dfs_update_channels_wk; int /*<<< orphan*/  event_work; int /*<<< orphan*/  conn_work; int /*<<< orphan*/  scan_done_wk; int /*<<< orphan*/  list; scalar_t__ rfkill; int /*<<< orphan*/  dev_wait; } ;
struct TYPE_4__ {scalar_t__ set_wakeup; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_CMD_DEL_WIPHY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cfg80211_registered_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfg80211_registered_device*) ; 
 int /*<<< orphan*/  cfg80211_rdev_list_generation ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct cfg80211_registered_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cfg80211_registered_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct wiphy*) ; 
 struct cfg80211_registered_device* FUNC18 (struct wiphy*) ; 

void FUNC19(struct wiphy *wiphy)
{
	struct cfg80211_registered_device *rdev = FUNC18(wiphy);

	FUNC16(rdev->dev_wait, ({
		int __count;
		FUNC13();
		__count = rdev->opencount;
		FUNC14();
		__count == 0; }));

	if (rdev->rfkill)
		FUNC12(rdev->rfkill);

	FUNC13();
	FUNC10(rdev, NL80211_CMD_DEL_WIPHY);
	rdev->wiphy.registered = false;

	FUNC0(!FUNC9(&rdev->wiphy.wdev_list));

	/*
	 * First remove the hardware from everywhere, this makes
	 * it impossible to find from userspace.
	 */
	FUNC5(rdev->wiphy.debugfsdir);
	FUNC8(&rdev->list);
	FUNC15();

	/*
	 * If this device got a regulatory hint tell core its
	 * free to listen now to a new shiny device regulatory hint
	 */
	FUNC17(wiphy);

	cfg80211_rdev_list_generation++;
	FUNC6(&rdev->wiphy.dev);

	FUNC14();

	FUNC7(&rdev->scan_done_wk);
	FUNC2(&rdev->conn_work);
	FUNC7(&rdev->event_work);
	FUNC1(&rdev->dfs_update_channels_wk);
	FUNC7(&rdev->destroy_work);
	FUNC7(&rdev->sched_scan_stop_wk);
	FUNC7(&rdev->mlme_unreg_wk);
	FUNC7(&rdev->propagate_radar_detect_wk);
	FUNC7(&rdev->propagate_cac_done_wk);

#ifdef CONFIG_PM
	if (rdev->wiphy.wowlan_config && rdev->ops->set_wakeup)
		rdev_set_wakeup(rdev, false);
#endif
	FUNC4(rdev);
	FUNC3(rdev);
}