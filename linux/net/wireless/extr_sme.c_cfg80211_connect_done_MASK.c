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
struct cfg80211_registered_device {int /*<<< orphan*/  event_work; } ;
struct cfg80211_internal_bss {int /*<<< orphan*/  ts; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {int kek_len; int pmk_len; int /*<<< orphan*/  erp_next_seq_num; scalar_t__ update_erp_next_seq_num; int /*<<< orphan*/ * pmkid; int /*<<< orphan*/ * pmk; int /*<<< orphan*/ * kek; } ;
struct TYPE_5__ {int req_ie_len; int resp_ie_len; int /*<<< orphan*/  timeout_reason; int /*<<< orphan*/  status; struct cfg80211_bss* bss; TYPE_1__ fils; int /*<<< orphan*/ * resp_ie; int /*<<< orphan*/ * req_ie; int /*<<< orphan*/ * bssid; } ;
struct cfg80211_event {int /*<<< orphan*/  list; TYPE_2__ cr; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {int kek_len; int pmk_len; int /*<<< orphan*/  erp_next_seq_num; scalar_t__ update_erp_next_seq_num; scalar_t__ pmkid; scalar_t__ pmk; scalar_t__ kek; } ;
struct cfg80211_connect_resp_params {int req_ie_len; int resp_ie_len; int /*<<< orphan*/  timeout_reason; int /*<<< orphan*/  status; struct cfg80211_bss* bss; TYPE_3__ fils; scalar_t__ resp_ie; scalar_t__ req_ie; scalar_t__ bssid; } ;
struct cfg80211_bss {int /*<<< orphan*/  bssid; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  EVENT_CONNECT_RESULT ; 
 int /*<<< orphan*/  IEEE80211_PRIVACY_ANY ; 
 int WLAN_PMKID_LEN ; 
 struct cfg80211_internal_bss* FUNC0 (struct cfg80211_bss*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_registered_device*,struct cfg80211_internal_bss*,int,int /*<<< orphan*/ ) ; 
 struct cfg80211_bss* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cfg80211_internal_bss*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct cfg80211_bss*) ; 
 int /*<<< orphan*/  cfg80211_wq ; 
 struct cfg80211_event* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 struct cfg80211_registered_device* FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(struct net_device *dev,
			   struct cfg80211_connect_resp_params *params,
			   gfp_t gfp)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC12(wdev->wiphy);
	struct cfg80211_event *ev;
	unsigned long flags;
	u8 *next;

	if (params->bss) {
		struct cfg80211_internal_bss *ibss = FUNC0(params->bss);

		if (FUNC7(&ibss->list)) {
			struct cfg80211_bss *found = NULL, *tmp = params->bss;

			found = FUNC2(wdev->wiphy, NULL,
						 params->bss->bssid,
						 wdev->ssid, wdev->ssid_len,
						 wdev->conn_bss_type,
						 IEEE80211_PRIVACY_ANY);
			if (found) {
				/* The same BSS is already updated so use it
				 * instead, as it has latest info.
				 */
				params->bss = found;
			} else {
				/* Update with BSS provided by driver, it will
				 * be freshly added and ref cnted, we can free
				 * the old one.
				 *
				 * signal_valid can be false, as we are not
				 * expecting the BSS to be found.
				 *
				 * keep the old timestamp to avoid confusion
				 */
				FUNC1(rdev, ibss, false,
						    ibss->ts);
			}

			FUNC4(wdev->wiphy, tmp);
		}
	}

	ev = FUNC5(sizeof(*ev) + (params->bssid ? ETH_ALEN : 0) +
		     params->req_ie_len + params->resp_ie_len +
		     params->fils.kek_len + params->fils.pmk_len +
		     (params->fils.pmkid ? WLAN_PMKID_LEN : 0), gfp);
	if (!ev) {
		FUNC4(wdev->wiphy, params->bss);
		return;
	}

	ev->type = EVENT_CONNECT_RESULT;
	next = ((u8 *)ev) + sizeof(*ev);
	if (params->bssid) {
		ev->cr.bssid = next;
		FUNC8((void *)ev->cr.bssid, params->bssid, ETH_ALEN);
		next += ETH_ALEN;
	}
	if (params->req_ie_len) {
		ev->cr.req_ie = next;
		ev->cr.req_ie_len = params->req_ie_len;
		FUNC8((void *)ev->cr.req_ie, params->req_ie,
		       params->req_ie_len);
		next += params->req_ie_len;
	}
	if (params->resp_ie_len) {
		ev->cr.resp_ie = next;
		ev->cr.resp_ie_len = params->resp_ie_len;
		FUNC8((void *)ev->cr.resp_ie, params->resp_ie,
		       params->resp_ie_len);
		next += params->resp_ie_len;
	}
	if (params->fils.kek_len) {
		ev->cr.fils.kek = next;
		ev->cr.fils.kek_len = params->fils.kek_len;
		FUNC8((void *)ev->cr.fils.kek, params->fils.kek,
		       params->fils.kek_len);
		next += params->fils.kek_len;
	}
	if (params->fils.pmk_len) {
		ev->cr.fils.pmk = next;
		ev->cr.fils.pmk_len = params->fils.pmk_len;
		FUNC8((void *)ev->cr.fils.pmk, params->fils.pmk,
		       params->fils.pmk_len);
		next += params->fils.pmk_len;
	}
	if (params->fils.pmkid) {
		ev->cr.fils.pmkid = next;
		FUNC8((void *)ev->cr.fils.pmkid, params->fils.pmkid,
		       WLAN_PMKID_LEN);
		next += WLAN_PMKID_LEN;
	}
	ev->cr.fils.update_erp_next_seq_num = params->fils.update_erp_next_seq_num;
	if (params->fils.update_erp_next_seq_num)
		ev->cr.fils.erp_next_seq_num = params->fils.erp_next_seq_num;
	if (params->bss)
		FUNC3(FUNC0(params->bss));
	ev->cr.bss = params->bss;
	ev->cr.status = params->status;
	ev->cr.timeout_reason = params->timeout_reason;

	FUNC10(&wdev->event_lock, flags);
	FUNC6(&ev->list, &wdev->event_list);
	FUNC11(&wdev->event_lock, flags);
	FUNC9(cfg80211_wq, &rdev->event_work);
}