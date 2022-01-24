#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
struct wireless_dev {size_t iftype; TYPE_7__* current_bss; TYPE_3__* wiphy; } ;
struct TYPE_12__ {scalar_t__ category; } ;
struct TYPE_13__ {TYPE_5__ action; } ;
struct ieee80211_mgmt {TYPE_6__ u; int /*<<< orphan*/  frame_control; int /*<<< orphan*/  sa; int /*<<< orphan*/  bssid; int /*<<< orphan*/  da; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; TYPE_1__* ops; } ;
struct cfg80211_mgmt_tx_params {int len; scalar_t__ buf; } ;
struct TYPE_11__ {int /*<<< orphan*/  bssid; } ;
struct TYPE_14__ {TYPE_4__ pub; } ;
struct TYPE_10__ {TYPE_2__* mgmt_stypes; } ;
struct TYPE_9__ {int tx; } ;
struct TYPE_8__ {int /*<<< orphan*/  mgmt_tx; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 int IEEE80211_FCTL_STYPE ; 
 int /*<<< orphan*/  NL80211_EXT_FEATURE_MGMT_TX_RANDOM_TA ; 
 int /*<<< orphan*/  NL80211_EXT_FEATURE_MGMT_TX_RANDOM_TA_CONNECTED ; 
#define  NL80211_IFTYPE_ADHOC 136 
#define  NL80211_IFTYPE_AP 135 
#define  NL80211_IFTYPE_AP_VLAN 134 
#define  NL80211_IFTYPE_MESH_POINT 133 
#define  NL80211_IFTYPE_NAN 132 
#define  NL80211_IFTYPE_P2P_CLIENT 131 
#define  NL80211_IFTYPE_P2P_DEVICE 130 
#define  NL80211_IFTYPE_P2P_GO 129 
#define  NL80211_IFTYPE_STATION 128 
 scalar_t__ WLAN_CATEGORY_PUBLIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct cfg80211_registered_device*,struct wireless_dev*,struct cfg80211_mgmt_tx_params*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC10(struct cfg80211_registered_device *rdev,
			  struct wireless_dev *wdev,
			  struct cfg80211_mgmt_tx_params *params, u64 *cookie)
{
	const struct ieee80211_mgmt *mgmt;
	u16 stype;

	if (!wdev->wiphy->mgmt_stypes)
		return -EOPNOTSUPP;

	if (!rdev->ops->mgmt_tx)
		return -EOPNOTSUPP;

	if (params->len < 24 + 1)
		return -EINVAL;

	mgmt = (const struct ieee80211_mgmt *)params->buf;

	if (!FUNC3(mgmt->frame_control))
		return -EINVAL;

	stype = FUNC4(mgmt->frame_control) & IEEE80211_FCTL_STYPE;
	if (!(wdev->wiphy->mgmt_stypes[wdev->iftype].tx & FUNC0(stype >> 4)))
		return -EINVAL;

	if (FUNC2(mgmt->frame_control) &&
	    mgmt->u.action.category != WLAN_CATEGORY_PUBLIC) {
		int err = 0;

		FUNC7(wdev);

		switch (wdev->iftype) {
		case NL80211_IFTYPE_ADHOC:
		case NL80211_IFTYPE_STATION:
		case NL80211_IFTYPE_P2P_CLIENT:
			if (!wdev->current_bss) {
				err = -ENOTCONN;
				break;
			}

			if (!FUNC1(wdev->current_bss->pub.bssid,
					      mgmt->bssid)) {
				err = -ENOTCONN;
				break;
			}

			/*
			 * check for IBSS DA must be done by driver as
			 * cfg80211 doesn't track the stations
			 */
			if (wdev->iftype == NL80211_IFTYPE_ADHOC)
				break;

			/* for station, check that DA is the AP */
			if (!FUNC1(wdev->current_bss->pub.bssid,
					      mgmt->da)) {
				err = -ENOTCONN;
				break;
			}
			break;
		case NL80211_IFTYPE_AP:
		case NL80211_IFTYPE_P2P_GO:
		case NL80211_IFTYPE_AP_VLAN:
			if (!FUNC1(mgmt->bssid, FUNC6(wdev)))
				err = -EINVAL;
			break;
		case NL80211_IFTYPE_MESH_POINT:
			if (!FUNC1(mgmt->sa, mgmt->bssid)) {
				err = -EINVAL;
				break;
			}
			/*
			 * check for mesh DA must be done by driver as
			 * cfg80211 doesn't track the stations
			 */
			break;
		case NL80211_IFTYPE_P2P_DEVICE:
			/*
			 * fall through, P2P device only supports
			 * public action frames
			 */
		case NL80211_IFTYPE_NAN:
		default:
			err = -EOPNOTSUPP;
			break;
		}
		FUNC8(wdev);

		if (err)
			return err;
	}

	if (!FUNC1(mgmt->sa, FUNC6(wdev))) {
		/* Allow random TA to be used with Public Action frames if the
		 * driver has indicated support for this. Otherwise, only allow
		 * the local address to be used.
		 */
		if (!FUNC2(mgmt->frame_control) ||
		    mgmt->u.action.category != WLAN_CATEGORY_PUBLIC)
			return -EINVAL;
		if (!wdev->current_bss &&
		    !FUNC9(
			    &rdev->wiphy,
			    NL80211_EXT_FEATURE_MGMT_TX_RANDOM_TA))
			return -EINVAL;
		if (wdev->current_bss &&
		    !FUNC9(
			    &rdev->wiphy,
			    NL80211_EXT_FEATURE_MGMT_TX_RANDOM_TA_CONNECTED))
			return -EINVAL;
	}

	/* Transmit the Action frame as requested by user space */
	return FUNC5(rdev, wdev, params, cookie);
}