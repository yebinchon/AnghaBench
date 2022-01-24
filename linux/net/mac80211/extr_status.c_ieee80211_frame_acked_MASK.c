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
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_8__ {int ack_signal_filled; int /*<<< orphan*/  avg_ack_signal; scalar_t__ last_ack_signal; int /*<<< orphan*/  last_ack; } ;
struct sta_info {int known_smps_mode; TYPE_1__ status_stats; struct ieee80211_sub_if_data* sdata; struct ieee80211_local* local; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_9__ {scalar_t__ ack_signal; scalar_t__ is_valid_ack_signal; } ;
struct ieee80211_tx_info {TYPE_2__ status; } ;
struct TYPE_14__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {int smps_mode; TYPE_7__ vif; int /*<<< orphan*/  recalc_smps; } ;
struct TYPE_10__ {scalar_t__ action; int smps_control; } ;
struct TYPE_11__ {TYPE_3__ ht_smps; } ;
struct TYPE_12__ {scalar_t__ category; TYPE_4__ u; } ;
struct TYPE_13__ {TYPE_5__ action; } ;
struct ieee80211_mgmt {TYPE_6__ u; int /*<<< orphan*/  frame_control; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr1; } ;
typedef  scalar_t__ s8 ;
typedef  enum ieee80211_smps_mode { ____Placeholder_ieee80211_smps_mode } ieee80211_smps_mode ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_SMPS_DYNAMIC ; 
 int IEEE80211_SMPS_OFF ; 
 int IEEE80211_SMPS_STATIC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_AP_VLAN ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  REPORTS_TX_ACK_STATUS ; 
 scalar_t__ WLAN_CATEGORY_HT ; 
 scalar_t__ WLAN_HT_ACTION_SMPS ; 
#define  WLAN_HT_SMPS_CONTROL_DISABLED 130 
#define  WLAN_HT_SMPS_CONTROL_DYNAMIC 129 
#define  WLAN_HT_SMPS_CONTROL_STATIC 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sta_info*,int /*<<< orphan*/ ,int) ; 
 int* FUNC3 (struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  jiffies ; 

__attribute__((used)) static void FUNC10(struct sta_info *sta, struct sk_buff *skb)
{
	struct ieee80211_mgmt *mgmt = (void *) skb->data;
	struct ieee80211_local *local = sta->local;
	struct ieee80211_sub_if_data *sdata = sta->sdata;
	struct ieee80211_tx_info *txinfo = FUNC0(skb);

	if (FUNC5(&local->hw, REPORTS_TX_ACK_STATUS)) {
		sta->status_stats.last_ack = jiffies;
		if (txinfo->status.is_valid_ack_signal) {
			sta->status_stats.last_ack_signal =
					 (s8)txinfo->status.ack_signal;
			sta->status_stats.ack_signal_filled = true;
			FUNC1(&sta->status_stats.avg_ack_signal,
					    -txinfo->status.ack_signal);
		}
	}

	if (FUNC7(mgmt->frame_control)) {
		struct ieee80211_hdr *hdr = (void *) skb->data;
		u8 *qc = FUNC3(hdr);
		u16 tid = qc[0] & 0xf;

		FUNC2(sta, hdr->addr1, tid);
	}

	if (FUNC6(mgmt->frame_control) &&
	    !FUNC4(mgmt->frame_control) &&
	    mgmt->u.action.category == WLAN_CATEGORY_HT &&
	    mgmt->u.action.u.ht_smps.action == WLAN_HT_ACTION_SMPS &&
	    FUNC9(sdata)) {
		enum ieee80211_smps_mode smps_mode;

		switch (mgmt->u.action.u.ht_smps.smps_control) {
		case WLAN_HT_SMPS_CONTROL_DYNAMIC:
			smps_mode = IEEE80211_SMPS_DYNAMIC;
			break;
		case WLAN_HT_SMPS_CONTROL_STATIC:
			smps_mode = IEEE80211_SMPS_STATIC;
			break;
		case WLAN_HT_SMPS_CONTROL_DISABLED:
		default: /* shouldn't happen since we don't send that */
			smps_mode = IEEE80211_SMPS_OFF;
			break;
		}

		if (sdata->vif.type == NL80211_IFTYPE_STATION) {
			/*
			 * This update looks racy, but isn't -- if we come
			 * here we've definitely got a station that we're
			 * talking to, and on a managed interface that can
			 * only be the AP. And the only other place updating
			 * this variable in managed mode is before association.
			 */
			sdata->smps_mode = smps_mode;
			FUNC8(&local->hw, &sdata->recalc_smps);
		} else if (sdata->vif.type == NL80211_IFTYPE_AP ||
			   sdata->vif.type == NL80211_IFTYPE_AP_VLAN) {
			sta->known_smps_mode = smps_mode;
		}
	}
}