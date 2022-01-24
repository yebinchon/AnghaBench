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
struct wireless_dev {int /*<<< orphan*/  event_lock; int /*<<< orphan*/  event_list; int /*<<< orphan*/  wiphy; int /*<<< orphan*/  conn_bss_type; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct TYPE_5__ {int /*<<< orphan*/  erp_next_seq_num; scalar_t__ update_erp_next_seq_num; scalar_t__ pmkid; scalar_t__ pmk_len; scalar_t__ pmk; scalar_t__ kek_len; scalar_t__ kek; } ;
struct cfg80211_roam_info {int /*<<< orphan*/  bss; TYPE_2__ fils; scalar_t__ resp_ie_len; scalar_t__ resp_ie; scalar_t__ req_ie_len; scalar_t__ req_ie; int /*<<< orphan*/  bssid; int /*<<< orphan*/  channel; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  event_work; } ;
struct TYPE_4__ {int /*<<< orphan*/  erp_next_seq_num; scalar_t__ update_erp_next_seq_num; int /*<<< orphan*/ * pmkid; int /*<<< orphan*/ * pmk; scalar_t__ pmk_len; int /*<<< orphan*/ * kek; scalar_t__ kek_len; } ;
struct TYPE_6__ {int /*<<< orphan*/  bss; TYPE_1__ fils; int /*<<< orphan*/ * resp_ie; scalar_t__ resp_ie_len; int /*<<< orphan*/ * req_ie; scalar_t__ req_ie_len; } ;
struct cfg80211_event {int /*<<< orphan*/  list; TYPE_3__ rm; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_ROAMED ; 
 int /*<<< orphan*/  IEEE80211_PRIVACY_ANY ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ WLAN_PMKID_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cfg80211_wq ; 
 struct cfg80211_event* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct cfg80211_registered_device* FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(struct net_device *dev, struct cfg80211_roam_info *info,
		     gfp_t gfp)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC9(wdev->wiphy);
	struct cfg80211_event *ev;
	unsigned long flags;
	u8 *next;

	if (!info->bss) {
		info->bss = FUNC1(wdev->wiphy, info->channel,
					     info->bssid, wdev->ssid,
					     wdev->ssid_len,
					     wdev->conn_bss_type,
					     IEEE80211_PRIVACY_ANY);
	}

	if (FUNC0(!info->bss))
		return;

	ev = FUNC3(sizeof(*ev) + info->req_ie_len + info->resp_ie_len +
		     info->fils.kek_len + info->fils.pmk_len +
		     (info->fils.pmkid ? WLAN_PMKID_LEN : 0), gfp);
	if (!ev) {
		FUNC2(wdev->wiphy, info->bss);
		return;
	}

	ev->type = EVENT_ROAMED;
	next = ((u8 *)ev) + sizeof(*ev);
	if (info->req_ie_len) {
		ev->rm.req_ie = next;
		ev->rm.req_ie_len = info->req_ie_len;
		FUNC5((void *)ev->rm.req_ie, info->req_ie, info->req_ie_len);
		next += info->req_ie_len;
	}
	if (info->resp_ie_len) {
		ev->rm.resp_ie = next;
		ev->rm.resp_ie_len = info->resp_ie_len;
		FUNC5((void *)ev->rm.resp_ie, info->resp_ie,
		       info->resp_ie_len);
		next += info->resp_ie_len;
	}
	if (info->fils.kek_len) {
		ev->rm.fils.kek = next;
		ev->rm.fils.kek_len = info->fils.kek_len;
		FUNC5((void *)ev->rm.fils.kek, info->fils.kek,
		       info->fils.kek_len);
		next += info->fils.kek_len;
	}
	if (info->fils.pmk_len) {
		ev->rm.fils.pmk = next;
		ev->rm.fils.pmk_len = info->fils.pmk_len;
		FUNC5((void *)ev->rm.fils.pmk, info->fils.pmk,
		       info->fils.pmk_len);
		next += info->fils.pmk_len;
	}
	if (info->fils.pmkid) {
		ev->rm.fils.pmkid = next;
		FUNC5((void *)ev->rm.fils.pmkid, info->fils.pmkid,
		       WLAN_PMKID_LEN);
		next += WLAN_PMKID_LEN;
	}
	ev->rm.fils.update_erp_next_seq_num = info->fils.update_erp_next_seq_num;
	if (info->fils.update_erp_next_seq_num)
		ev->rm.fils.erp_next_seq_num = info->fils.erp_next_seq_num;
	ev->rm.bss = info->bss;

	FUNC7(&wdev->event_lock, flags);
	FUNC4(&ev->list, &wdev->event_list);
	FUNC8(&wdev->event_lock, flags);
	FUNC6(cfg80211_wq, &rdev->event_work);
}