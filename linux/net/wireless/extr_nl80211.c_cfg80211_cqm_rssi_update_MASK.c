#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct wireless_dev {TYPE_4__* cqm_config; TYPE_3__* current_bss; } ;
struct station_info {int filled; scalar_t__ rx_beacon_signal_avg; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
typedef  scalar_t__ s8 ;
typedef  scalar_t__ s32 ;
struct TYPE_8__ {scalar_t__ last_rssi_event_value; scalar_t__ rssi_hyst; int n_rssi_thresholds; scalar_t__* rssi_thresholds; } ;
struct TYPE_6__ {int /*<<< orphan*/ * bssid; } ;
struct TYPE_7__ {TYPE_2__ pub; } ;
struct TYPE_5__ {scalar_t__ get_station; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NL80211_STA_INFO_BEACON_SIGNAL_AVG ; 
 scalar_t__ S32_MAX ; 
 scalar_t__ S32_MIN ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (struct cfg80211_registered_device*,struct net_device*,int /*<<< orphan*/ *,struct station_info*) ; 
 int FUNC3 (struct cfg80211_registered_device*,struct net_device*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct cfg80211_registered_device *rdev,
				    struct net_device *dev)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	s32 last, low, high;
	u32 hyst;
	int i, n, low_index;
	int err;

	/* RSSI reporting disabled? */
	if (!wdev->cqm_config)
		return FUNC3(rdev, dev, 0, 0);

	/*
	 * Obtain current RSSI value if possible, if not and no RSSI threshold
	 * event has been received yet, we should receive an event after a
	 * connection is established and enough beacons received to calculate
	 * the average.
	 */
	if (!wdev->cqm_config->last_rssi_event_value && wdev->current_bss &&
	    rdev->ops->get_station) {
		struct station_info sinfo = {};
		u8 *mac_addr;

		mac_addr = wdev->current_bss->pub.bssid;

		err = FUNC2(rdev, dev, mac_addr, &sinfo);
		if (err)
			return err;

		if (sinfo.filled & FUNC0(NL80211_STA_INFO_BEACON_SIGNAL_AVG))
			wdev->cqm_config->last_rssi_event_value =
				(s8) sinfo.rx_beacon_signal_avg;
	}

	last = wdev->cqm_config->last_rssi_event_value;
	hyst = wdev->cqm_config->rssi_hyst;
	n = wdev->cqm_config->n_rssi_thresholds;

	for (i = 0; i < n; i++) {
		i = FUNC1(i, n);
		if (last < wdev->cqm_config->rssi_thresholds[i])
			break;
	}

	low_index = i - 1;
	if (low_index >= 0) {
		low_index = FUNC1(low_index, n);
		low = wdev->cqm_config->rssi_thresholds[low_index] - hyst;
	} else {
		low = S32_MIN;
	}
	if (i < n) {
		i = FUNC1(i, n);
		high = wdev->cqm_config->rssi_thresholds[i] + hyst - 1;
	} else {
		high = S32_MAX;
	}

	return FUNC3(rdev, dev, low, high);
}