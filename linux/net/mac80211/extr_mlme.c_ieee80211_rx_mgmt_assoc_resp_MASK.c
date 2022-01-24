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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct ieee802_11_elems {TYPE_4__* timeout_int; } ;
struct ieee80211_if_managed {int /*<<< orphan*/  assoc_req_ies_len; int /*<<< orphan*/  assoc_req_ies; struct ieee80211_mgd_assoc_data* assoc_data; } ;
struct TYPE_8__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/  dev; TYPE_7__* tx_conf; int /*<<< orphan*/  local; TYPE_1__ u; } ;
struct TYPE_9__ {int /*<<< orphan*/ * variable; int /*<<< orphan*/  aid; int /*<<< orphan*/  status_code; int /*<<< orphan*/  capab_info; } ;
struct TYPE_10__ {TYPE_2__ assoc_resp; } ;
struct ieee80211_mgmt {int /*<<< orphan*/  sa; int /*<<< orphan*/  bssid; TYPE_3__ u; int /*<<< orphan*/  frame_control; } ;
struct ieee80211_mgd_assoc_data {int timeout_started; struct cfg80211_bss* bss; scalar_t__ timeout; scalar_t__ fils_kek_len; } ;
struct TYPE_12__ {int reason; int /*<<< orphan*/  status; int /*<<< orphan*/  data; } ;
struct TYPE_13__ {TYPE_5__ mlme; } ;
struct ieee80211_event {TYPE_6__ u; int /*<<< orphan*/  type; } ;
struct cfg80211_bss {int /*<<< orphan*/  bssid; } ;
struct TYPE_14__ {scalar_t__ uapsd; } ;
struct TYPE_11__ {scalar_t__ type; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOC_EVENT ; 
 int FUNC0 (int) ; 
 int IEEE80211_ASSOC_TIMEOUT ; 
 int IEEE80211_NUM_ACS ; 
 int /*<<< orphan*/  MLME_DENIED ; 
 int /*<<< orphan*/  MLME_EVENT ; 
 int /*<<< orphan*/  MLME_SUCCESS ; 
 int WLAN_STATUS_ASSOC_REJECTED_TEMPORARILY ; 
 int WLAN_STATUS_SUCCESS ; 
 scalar_t__ WLAN_TIMEOUT_ASSOC_COMEBACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cfg80211_bss*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cfg80211_bss*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ieee80211_sub_if_data*,struct ieee80211_event*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,size_t*,struct ieee80211_mgd_assoc_data*) ; 
 int* ieee80211_ac_to_qos_mask ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*,struct cfg80211_bss*,struct ieee80211_mgmt*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_sub_if_data*,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t,int,struct ieee802_11_elems*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_sub_if_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_sub_if_data*,char*,...) ; 

__attribute__((used)) static void FUNC16(struct ieee80211_sub_if_data *sdata,
					 struct ieee80211_mgmt *mgmt,
					 size_t len)
{
	struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
	struct ieee80211_mgd_assoc_data *assoc_data = ifmgd->assoc_data;
	u16 capab_info, status_code, aid;
	struct ieee802_11_elems elems;
	int ac, uapsd_queues = -1;
	u8 *pos;
	bool reassoc;
	struct cfg80211_bss *bss;
	struct ieee80211_event event = {
		.type = MLME_EVENT,
		.u.mlme.data = ASSOC_EVENT,
	};

	FUNC14(sdata);

	if (!assoc_data)
		return;
	if (!FUNC4(assoc_data->bss->bssid, mgmt->bssid))
		return;

	/*
	 * AssocResp and ReassocResp have identical structure, so process both
	 * of them in this function.
	 */

	if (len < 24 + 6)
		return;

	reassoc = FUNC8(mgmt->frame_control);
	capab_info = FUNC10(mgmt->u.assoc_resp.capab_info);
	status_code = FUNC10(mgmt->u.assoc_resp.status_code);
	aid = FUNC10(mgmt->u.assoc_resp.aid);

	FUNC15(sdata,
		   "RX %sssocResp from %pM (capab=0x%x status=%d aid=%d)\n",
		   reassoc ? "Rea" : "A", mgmt->sa,
		   capab_info, status_code, (u16)(aid & ~(FUNC0(15) | FUNC0(14))));

	if (assoc_data->fils_kek_len &&
	    FUNC5(sdata, (u8 *)mgmt, &len, assoc_data) < 0)
		return;

	pos = mgmt->u.assoc_resp.variable;
	FUNC9(pos, len - (pos - (u8 *)mgmt), false, &elems,
			       mgmt->bssid, assoc_data->bss->bssid);

	if (status_code == WLAN_STATUS_ASSOC_REJECTED_TEMPORARILY &&
	    elems.timeout_int &&
	    elems.timeout_int->type == WLAN_TIMEOUT_ASSOC_COMEBACK) {
		u32 tu, ms;
		tu = FUNC11(elems.timeout_int->value);
		ms = tu * 1024 / 1000;
		FUNC15(sdata,
			   "%pM rejected association temporarily; comeback duration %u TU (%u ms)\n",
			   mgmt->sa, tu, ms);
		assoc_data->timeout = jiffies + FUNC12(ms);
		assoc_data->timeout_started = true;
		if (ms > IEEE80211_ASSOC_TIMEOUT)
			FUNC13(sdata, assoc_data->timeout);
		return;
	}

	bss = assoc_data->bss;

	if (status_code != WLAN_STATUS_SUCCESS) {
		FUNC15(sdata, "%pM denied association (code=%d)\n",
			   mgmt->sa, status_code);
		FUNC7(sdata, false, false);
		event.u.mlme.status = MLME_DENIED;
		event.u.mlme.reason = status_code;
		FUNC3(sdata->local, sdata, &event);
	} else {
		if (!FUNC6(sdata, bss, mgmt, len)) {
			/* oops -- internal error -- send timeout for now */
			FUNC7(sdata, false, false);
			FUNC1(sdata->dev, bss);
			return;
		}
		event.u.mlme.status = MLME_SUCCESS;
		FUNC3(sdata->local, sdata, &event);
		FUNC15(sdata, "associated\n");

		/*
		 * destroy assoc_data afterwards, as otherwise an idle
		 * recalc after assoc_data is NULL but before associated
		 * is set can cause the interface to go idle
		 */
		FUNC7(sdata, true, false);

		/* get uapsd queues configuration */
		uapsd_queues = 0;
		for (ac = 0; ac < IEEE80211_NUM_ACS; ac++)
			if (sdata->tx_conf[ac].uapsd)
				uapsd_queues |= ieee80211_ac_to_qos_mask[ac];
	}

	FUNC2(sdata->dev, bss, (u8 *)mgmt, len, uapsd_queues,
			       ifmgd->assoc_req_ies, ifmgd->assoc_req_ies_len);
}