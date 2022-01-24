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
struct wireless_dev {int /*<<< orphan*/  iftype; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cfg80211_chan_def {TYPE_1__* chan; } ;
struct net_device {int /*<<< orphan*/  propagate_radar_detect_wk; struct cfg80211_chan_def radar_chandef; struct wireless_dev* ieee80211_ptr; } ;
struct genl_info {struct net_device** user_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  propagate_radar_detect_wk; struct cfg80211_chan_def radar_chandef; struct wireless_dev* ieee80211_ptr; } ;
typedef  enum nl80211_dfs_regions { ____Placeholder_nl80211_dfs_regions } nl80211_dfs_regions ;
struct TYPE_2__ {scalar_t__ dfs_state; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct genl_info*,char*) ; 
 scalar_t__ NL80211_DFS_UNAVAILABLE ; 
 int NL80211_DFS_UNSET ; 
 int FUNC1 (struct wiphy*,struct cfg80211_chan_def*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct wiphy*,struct cfg80211_chan_def*,scalar_t__) ; 
 int /*<<< orphan*/  cfg80211_wq ; 
 int FUNC4 (struct net_device*,struct genl_info*,struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct wiphy*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb,
					  struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct net_device *dev = info->user_ptr[1];
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct wiphy *wiphy = wdev->wiphy;
	struct cfg80211_chan_def chandef;
	enum nl80211_dfs_regions dfs_region;
	int err;

	dfs_region = FUNC6(wiphy);
	if (dfs_region == NL80211_DFS_UNSET) {
		FUNC0(info,
				 "DFS Region is not set. Unexpected Radar indication");
		return -EINVAL;
	}

	err = FUNC4(rdev, info, &chandef);
	if (err) {
		FUNC0(info, "Unable to extract chandef info");
		return err;
	}

	err = FUNC1(wiphy, &chandef, wdev->iftype);
	if (err < 0) {
		FUNC0(info, "chandef is invalid");
		return err;
	}

	if (err == 0) {
		FUNC0(info,
				 "Unexpected Radar indication for chandef/iftype");
		return -EINVAL;
	}

	/* Do not process this notification if radar is already detected
	 * by kernel on this channel, and return success.
	 */
	if (chandef.chan->dfs_state == NL80211_DFS_UNAVAILABLE)
		return 0;

	FUNC3(wiphy, &chandef, NL80211_DFS_UNAVAILABLE);

	FUNC2(rdev);

	rdev->radar_chandef = chandef;

	/* Propagate this notification to other radios as well */
	FUNC5(cfg80211_wq, &rdev->propagate_radar_detect_wk);

	return 0;
}