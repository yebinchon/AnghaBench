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
typedef  scalar_t__ u8 ;
struct sta_info {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;
struct ieee80211_if_managed {scalar_t__ probe_send_count; int nullfunc_failed; int flags; scalar_t__ probe_timeout; TYPE_4__* associated; } ;
struct TYPE_5__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; TYPE_3__* local; TYPE_1__ u; } ;
struct TYPE_8__ {int /*<<< orphan*/  channel; scalar_t__* bssid; } ;
struct TYPE_7__ {int /*<<< orphan*/  hw; int /*<<< orphan*/  sta_mtx; } ;

/* Variables and functions */
 int IEEE80211_STA_DISABLE_HE ; 
 int /*<<< orphan*/  REPORTS_TX_ACK_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WLAN_EID_SSID ; 
 scalar_t__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sta_info*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__ const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct ieee80211_sub_if_data*,int) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC7 (int,scalar_t__) ; 
 scalar_t__ max_probe_tries ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  probe_wait_ms ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_sub_if_data*,scalar_t__) ; 
 struct sta_info* FUNC14 (struct ieee80211_sub_if_data*,scalar_t__*) ; 

__attribute__((used)) static void FUNC15(struct ieee80211_sub_if_data *sdata)
{
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	const u8 *ssid;
	u8 *dst = ifmgd->associated->bssid;
	u8 unicast_limit = FUNC7(1, max_probe_tries - 3);
	struct sta_info *sta;

	/*
	 * Try sending broadcast probe requests for the last three
	 * probe requests after the first ones failed since some
	 * buggy APs only support broadcast probe requests.
	 */
	if (ifmgd->probe_send_count >= unicast_limit)
		dst = NULL;

	/*
	 * When the hardware reports an accurate Tx ACK status, it's
	 * better to send a nullfunc frame instead of a probe request,
	 * as it will kick us off the AP quickly if we aren't associated
	 * anymore. The timeout will be reset if the frame is ACKed by
	 * the AP.
	 */
	ifmgd->probe_send_count++;

	if (dst) {
		FUNC9(&sdata->local->sta_mtx);
		sta = FUNC14(sdata, dst);
		if (!FUNC0(!sta))
			FUNC3(sta);
		FUNC10(&sdata->local->sta_mtx);
	}

	if (FUNC4(&sdata->local->hw, REPORTS_TX_ACK_STATUS)) {
		ifmgd->nullfunc_failed = false;
		if (!(ifmgd->flags & IEEE80211_STA_DISABLE_HE))
			ifmgd->probe_send_count--;
		else
			FUNC6(sdata->local, sdata, false);
	} else {
		int ssid_len;

		FUNC11();
		ssid = FUNC2(ifmgd->associated, WLAN_EID_SSID);
		if (FUNC1(ssid == NULL))
			ssid_len = 0;
		else
			ssid_len = ssid[1];

		FUNC5(sdata, sdata->vif.addr, dst,
					      ssid + 2, ssid_len,
					      ifmgd->associated->channel);
		FUNC12();
	}

	ifmgd->probe_timeout = jiffies + FUNC8(probe_wait_ms);
	FUNC13(sdata, ifmgd->probe_timeout);
}