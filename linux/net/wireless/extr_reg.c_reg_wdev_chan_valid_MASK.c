#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cfg80211_chan_def {int dummy; } ;
struct wireless_dev {int iftype; TYPE_3__* current_bss; struct cfg80211_chan_def chandef; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  beacon_interval; int /*<<< orphan*/  netdev; } ;
struct wiphy {int dummy; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_5__ {int /*<<< orphan*/  channel; } ;
struct TYPE_6__ {TYPE_2__ pub; } ;
struct TYPE_4__ {int /*<<< orphan*/  get_channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_CHAN_DISABLED ; 
 int /*<<< orphan*/  NL80211_CHAN_NO_HT ; 
#define  NL80211_IFTYPE_ADHOC 135 
#define  NL80211_IFTYPE_AP 134 
#define  NL80211_IFTYPE_AP_VLAN 133 
#define  NL80211_IFTYPE_MONITOR 132 
#define  NL80211_IFTYPE_P2P_CLIENT 131 
#define  NL80211_IFTYPE_P2P_DEVICE 130 
#define  NL80211_IFTYPE_P2P_GO 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_chan_def*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wiphy*,struct cfg80211_chan_def*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wiphy*,struct cfg80211_chan_def*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cfg80211_registered_device*,struct wireless_dev*,struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC6 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct wireless_dev*) ; 
 struct cfg80211_registered_device* FUNC8 (struct wiphy*) ; 

__attribute__((used)) static bool FUNC9(struct wiphy *wiphy, struct wireless_dev *wdev)
{
	struct cfg80211_chan_def chandef = {};
	struct cfg80211_registered_device *rdev = FUNC8(wiphy);
	enum nl80211_iftype iftype;

	FUNC6(wdev);
	iftype = wdev->iftype;

	/* make sure the interface is active */
	if (!wdev->netdev || !FUNC4(wdev->netdev))
		goto wdev_inactive_unlock;

	switch (iftype) {
	case NL80211_IFTYPE_AP:
	case NL80211_IFTYPE_P2P_GO:
		if (!wdev->beacon_interval)
			goto wdev_inactive_unlock;
		chandef = wdev->chandef;
		break;
	case NL80211_IFTYPE_ADHOC:
		if (!wdev->ssid_len)
			goto wdev_inactive_unlock;
		chandef = wdev->chandef;
		break;
	case NL80211_IFTYPE_STATION:
	case NL80211_IFTYPE_P2P_CLIENT:
		if (!wdev->current_bss ||
		    !wdev->current_bss->pub.channel)
			goto wdev_inactive_unlock;

		if (!rdev->ops->get_channel ||
		    FUNC5(rdev, wdev, &chandef))
			FUNC1(&chandef,
						wdev->current_bss->pub.channel,
						NL80211_CHAN_NO_HT);
		break;
	case NL80211_IFTYPE_MONITOR:
	case NL80211_IFTYPE_AP_VLAN:
	case NL80211_IFTYPE_P2P_DEVICE:
		/* no enforcement required */
		break;
	default:
		/* others not implemented for now */
		FUNC0(1);
		break;
	}

	FUNC7(wdev);

	switch (iftype) {
	case NL80211_IFTYPE_AP:
	case NL80211_IFTYPE_P2P_GO:
	case NL80211_IFTYPE_ADHOC:
		return FUNC3(wiphy, &chandef, iftype);
	case NL80211_IFTYPE_STATION:
	case NL80211_IFTYPE_P2P_CLIENT:
		return FUNC2(wiphy, &chandef,
					       IEEE80211_CHAN_DISABLED);
	default:
		break;
	}

	return true;

wdev_inactive_unlock:
	FUNC7(wdev);
	return true;
}