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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {struct ieee80211_channel* chan; int /*<<< orphan*/  width; } ;
struct wireless_dev {int iftype; TYPE_3__ chandef; int /*<<< orphan*/  wiphy; int /*<<< orphan*/  mesh_id_len; int /*<<< orphan*/  beacon_interval; int /*<<< orphan*/  cac_started; TYPE_2__* current_bss; int /*<<< orphan*/  ibss_dfs_possible; int /*<<< orphan*/  ibss_fixed; scalar_t__ netdev; } ;
struct ieee80211_channel {int dummy; } ;
typedef  enum cfg80211_chan_mode { ____Placeholder_cfg80211_chan_mode } cfg80211_chan_mode ;
struct TYPE_4__ {struct ieee80211_channel* channel; } ;
struct TYPE_5__ {TYPE_1__ pub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int CHAN_MODE_EXCLUSIVE ; 
 int CHAN_MODE_SHARED ; 
 int CHAN_MODE_UNDEFINED ; 
#define  NL80211_IFTYPE_ADHOC 141 
#define  NL80211_IFTYPE_AP 140 
#define  NL80211_IFTYPE_AP_VLAN 139 
#define  NL80211_IFTYPE_MESH_POINT 138 
#define  NL80211_IFTYPE_MONITOR 137 
#define  NL80211_IFTYPE_NAN 136 
#define  NL80211_IFTYPE_OCB 135 
#define  NL80211_IFTYPE_P2P_CLIENT 134 
#define  NL80211_IFTYPE_P2P_DEVICE 133 
#define  NL80211_IFTYPE_P2P_GO 132 
#define  NL80211_IFTYPE_STATION 131 
#define  NL80211_IFTYPE_UNSPECIFIED 130 
#define  NL80211_IFTYPE_WDS 129 
#define  NUM_NL80211_IFTYPES 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void
FUNC5(struct wireless_dev *wdev,
		        struct ieee80211_channel **chan,
		        enum cfg80211_chan_mode *chanmode,
		        u8 *radar_detect)
{
	int ret;

	*chan = NULL;
	*chanmode = CHAN_MODE_UNDEFINED;

	FUNC0(wdev);

	if (wdev->netdev && !FUNC4(wdev->netdev))
		return;

	switch (wdev->iftype) {
	case NL80211_IFTYPE_ADHOC:
		if (wdev->current_bss) {
			*chan = wdev->current_bss->pub.channel;
			*chanmode = (wdev->ibss_fixed &&
				     !wdev->ibss_dfs_possible)
				  ? CHAN_MODE_SHARED
				  : CHAN_MODE_EXCLUSIVE;

			/* consider worst-case - IBSS can try to return to the
			 * original user-specified channel as creator */
			if (wdev->ibss_dfs_possible)
				*radar_detect |= FUNC1(wdev->chandef.width);
			return;
		}
		break;
	case NL80211_IFTYPE_STATION:
	case NL80211_IFTYPE_P2P_CLIENT:
		if (wdev->current_bss) {
			*chan = wdev->current_bss->pub.channel;
			*chanmode = CHAN_MODE_SHARED;
			return;
		}
		break;
	case NL80211_IFTYPE_AP:
	case NL80211_IFTYPE_P2P_GO:
		if (wdev->cac_started) {
			*chan = wdev->chandef.chan;
			*chanmode = CHAN_MODE_SHARED;
			*radar_detect |= FUNC1(wdev->chandef.width);
		} else if (wdev->beacon_interval) {
			*chan = wdev->chandef.chan;
			*chanmode = CHAN_MODE_SHARED;

			ret = FUNC3(wdev->wiphy,
							    &wdev->chandef,
							    wdev->iftype);
			FUNC2(ret < 0);
			if (ret > 0)
				*radar_detect |= FUNC1(wdev->chandef.width);
		}
		return;
	case NL80211_IFTYPE_MESH_POINT:
		if (wdev->mesh_id_len) {
			*chan = wdev->chandef.chan;
			*chanmode = CHAN_MODE_SHARED;

			ret = FUNC3(wdev->wiphy,
							    &wdev->chandef,
							    wdev->iftype);
			FUNC2(ret < 0);
			if (ret > 0)
				*radar_detect |= FUNC1(wdev->chandef.width);
		}
		return;
	case NL80211_IFTYPE_OCB:
		if (wdev->chandef.chan) {
			*chan = wdev->chandef.chan;
			*chanmode = CHAN_MODE_SHARED;
			return;
		}
		break;
	case NL80211_IFTYPE_MONITOR:
	case NL80211_IFTYPE_AP_VLAN:
	case NL80211_IFTYPE_WDS:
	case NL80211_IFTYPE_P2P_DEVICE:
	case NL80211_IFTYPE_NAN:
		/* these interface types don't really have a channel */
		return;
	case NL80211_IFTYPE_UNSPECIFIED:
	case NUM_NL80211_IFTYPES:
		FUNC2(1);
	}
}