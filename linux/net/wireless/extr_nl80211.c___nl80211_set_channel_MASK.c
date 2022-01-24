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
struct cfg80211_chan_def {int /*<<< orphan*/  chan; } ;
struct wireless_dev {int iftype; struct cfg80211_chan_def preset_chandef; int /*<<< orphan*/  beacon_interval; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct genl_info {int dummy; } ;
struct TYPE_4__ {int features; } ;
struct cfg80211_registered_device {TYPE_2__ wiphy; TYPE_1__* ops; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_3__ {int /*<<< orphan*/  set_ap_chanwidth; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int NL80211_FEATURE_AP_MODE_CHAN_WIDTH_CHANGE ; 
#define  NL80211_IFTYPE_AP 131 
#define  NL80211_IFTYPE_MESH_POINT 130 
#define  NL80211_IFTYPE_MONITOR 129 
#define  NL80211_IFTYPE_P2P_GO 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct cfg80211_chan_def*,int) ; 
 int FUNC1 (struct cfg80211_registered_device*,struct wireless_dev*,struct cfg80211_chan_def*) ; 
 int FUNC2 (struct cfg80211_registered_device*,struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC3 (struct wireless_dev*) ; 
 int FUNC4 (struct cfg80211_registered_device*,struct genl_info*,struct cfg80211_chan_def*) ; 
 int FUNC5 (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_chan_def*) ; 

__attribute__((used)) static int FUNC6(struct cfg80211_registered_device *rdev,
				 struct net_device *dev,
				 struct genl_info *info)
{
	struct cfg80211_chan_def chandef;
	int result;
	enum nl80211_iftype iftype = NL80211_IFTYPE_MONITOR;
	struct wireless_dev *wdev = NULL;

	if (dev)
		wdev = dev->ieee80211_ptr;
	if (!FUNC3(wdev))
		return -EOPNOTSUPP;
	if (wdev)
		iftype = wdev->iftype;

	result = FUNC4(rdev, info, &chandef);
	if (result)
		return result;

	switch (iftype) {
	case NL80211_IFTYPE_AP:
	case NL80211_IFTYPE_P2P_GO:
		if (!FUNC0(&rdev->wiphy, &chandef,
						   iftype)) {
			result = -EINVAL;
			break;
		}
		if (wdev->beacon_interval) {
			if (!dev || !rdev->ops->set_ap_chanwidth ||
			    !(rdev->wiphy.features &
			      NL80211_FEATURE_AP_MODE_CHAN_WIDTH_CHANGE)) {
				result = -EBUSY;
				break;
			}

			/* Only allow dynamic channel width changes */
			if (chandef.chan != wdev->preset_chandef.chan) {
				result = -EBUSY;
				break;
			}
			result = FUNC5(rdev, dev, &chandef);
			if (result)
				break;
		}
		wdev->preset_chandef = chandef;
		result = 0;
		break;
	case NL80211_IFTYPE_MESH_POINT:
		result = FUNC1(rdev, wdev, &chandef);
		break;
	case NL80211_IFTYPE_MONITOR:
		result = FUNC2(rdev, &chandef);
		break;
	default:
		result = -EINVAL;
	}

	return result;
}