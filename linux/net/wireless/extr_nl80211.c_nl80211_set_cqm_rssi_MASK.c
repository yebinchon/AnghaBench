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
typedef  int /*<<< orphan*/  u32 ;
struct wireless_dev {scalar_t__ iftype; struct cfg80211_cqm_config* cqm_config; } ;
struct net_device {int /*<<< orphan*/  wiphy; TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct genl_info {struct net_device** user_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_cqm_config {int n_rssi_thresholds; int /*<<< orphan*/  rssi_thresholds; int /*<<< orphan*/  rssi_hyst; } ;
typedef  scalar_t__ s32 ;
struct TYPE_2__ {scalar_t__ set_cqm_rssi_config; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NL80211_EXT_FEATURE_CQM_RSSI_LIST ; 
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 scalar_t__ S32_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 int FUNC1 (struct net_device*,struct net_device*) ; 
 struct cfg80211_cqm_config* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__ const*,int) ; 
 int FUNC4 (struct net_device*,struct net_device*,scalar_t__ const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct genl_info *info,
				const s32 *thresholds, int n_thresholds,
				u32 hysteresis)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct net_device *dev = info->user_ptr[1];
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	int i, err;
	s32 prev = S32_MIN;

	/* Check all values negative and sorted */
	for (i = 0; i < n_thresholds; i++) {
		if (thresholds[i] > 0 || thresholds[i] <= prev)
			return -EINVAL;

		prev = thresholds[i];
	}

	if (wdev->iftype != NL80211_IFTYPE_STATION &&
	    wdev->iftype != NL80211_IFTYPE_P2P_CLIENT)
		return -EOPNOTSUPP;

	FUNC5(wdev);
	FUNC0(wdev);
	FUNC6(wdev);

	if (n_thresholds <= 1 && rdev->ops->set_cqm_rssi_config) {
		if (n_thresholds == 0 || thresholds[0] == 0) /* Disabling */
			return FUNC4(rdev, dev, 0, 0);

		return FUNC4(rdev, dev,
						thresholds[0], hysteresis);
	}

	if (!FUNC7(&rdev->wiphy,
				     NL80211_EXT_FEATURE_CQM_RSSI_LIST))
		return -EOPNOTSUPP;

	if (n_thresholds == 1 && thresholds[0] == 0) /* Disabling */
		n_thresholds = 0;

	FUNC5(wdev);
	if (n_thresholds) {
		struct cfg80211_cqm_config *cqm_config;

		cqm_config = FUNC2(sizeof(struct cfg80211_cqm_config) +
				     n_thresholds * sizeof(s32), GFP_KERNEL);
		if (!cqm_config) {
			err = -ENOMEM;
			goto unlock;
		}

		cqm_config->rssi_hyst = hysteresis;
		cqm_config->n_rssi_thresholds = n_thresholds;
		FUNC3(cqm_config->rssi_thresholds, thresholds,
		       n_thresholds * sizeof(s32));

		wdev->cqm_config = cqm_config;
	}

	err = FUNC1(rdev, dev);

unlock:
	FUNC6(wdev);

	return err;
}