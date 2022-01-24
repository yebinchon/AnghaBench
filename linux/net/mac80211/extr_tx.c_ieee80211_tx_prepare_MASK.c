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
struct tid_ampdu_tx {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/ * tid_tx; } ;
struct sta_info {TYPE_5__ ampdu_mlme; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ len; scalar_t__ data; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_tx_data {int flags; struct sta_info* sta; struct sk_buff* skb; struct ieee80211_sub_if_data* sdata; int /*<<< orphan*/  skbs; struct ieee80211_local* local; } ;
struct TYPE_11__ {scalar_t__ use_4addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  sta; } ;
struct TYPE_10__ {TYPE_2__ vlan; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {scalar_t__ control_port_protocol; TYPE_4__ wdev; TYPE_3__ u; TYPE_1__ vif; struct ieee80211_local* local; } ;
struct TYPE_14__ {TYPE_6__* wiphy; } ;
struct ieee80211_local {TYPE_7__ hw; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr1; int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  ieee80211_tx_result ;
struct TYPE_13__ {scalar_t__ frag_threshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMPDU_AGGREGATION ; 
 scalar_t__ FCS_LEN ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 int IEEE80211_TX_CTL_CLEAR_PS_FILT ; 
 int IEEE80211_TX_CTL_DONTFRAG ; 
 int IEEE80211_TX_CTL_FIRST_FRAGMENT ; 
 int IEEE80211_TX_CTL_INJECTED ; 
 int IEEE80211_TX_CTL_NO_ACK ; 
 int IEEE80211_TX_INTFL_NEED_TXPROCESSING ; 
 int IEEE80211_TX_INTFL_NL80211_FRAME_TX ; 
 int IEEE80211_TX_UNICAST ; 
 int /*<<< orphan*/  FUNC1 (struct sta_info*) ; 
 scalar_t__ NL80211_IFTYPE_AP_VLAN ; 
 int /*<<< orphan*/  TX_AMPDU_SETUP_IN_HW ; 
 int /*<<< orphan*/  TX_CONTINUE ; 
 int /*<<< orphan*/  TX_DROP ; 
 int /*<<< orphan*/  TX_QUEUED ; 
 int /*<<< orphan*/  WLAN_STA_CLEAR_PS_FILT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sta_info*) ; 
 int FUNC4 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC5 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ieee80211_tx_data*,struct sk_buff*,struct ieee80211_tx_info*,struct tid_ampdu_tx*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sta_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_tx_data*,int /*<<< orphan*/ ,int) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 struct sta_info* FUNC13 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 struct sta_info* FUNC14 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct sta_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static ieee80211_tx_result
FUNC17(struct ieee80211_sub_if_data *sdata,
		     struct ieee80211_tx_data *tx,
		     struct sta_info *sta, struct sk_buff *skb)
{
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_hdr *hdr;
	struct ieee80211_tx_info *info = FUNC0(skb);
	int tid;

	FUNC11(tx, 0, sizeof(*tx));
	tx->skb = skb;
	tx->local = local;
	tx->sdata = sdata;
	FUNC2(&tx->skbs);

	/*
	 * If this flag is set to true anywhere, and we get here,
	 * we are doing the needed processing, so remove the flag
	 * now.
	 */
	info->flags &= ~IEEE80211_TX_INTFL_NEED_TXPROCESSING;

	hdr = (struct ieee80211_hdr *) skb->data;

	if (FUNC10(sta)) {
		if (!FUNC1(sta))
			tx->sta = sta;
	} else {
		if (sdata->vif.type == NL80211_IFTYPE_AP_VLAN) {
			tx->sta = FUNC12(sdata->u.vlan.sta);
			if (!tx->sta && sdata->wdev.use_4addr)
				return TX_DROP;
		} else if (info->flags & (IEEE80211_TX_INTFL_NL80211_FRAME_TX |
					  IEEE80211_TX_CTL_INJECTED) ||
			   tx->sdata->control_port_protocol == tx->skb->protocol) {
			tx->sta = FUNC14(sdata, hdr->addr1);
		}
		if (!tx->sta && !FUNC9(hdr->addr1))
			tx->sta = FUNC13(sdata, hdr->addr1);
	}

	if (tx->sta && FUNC6(hdr->frame_control) &&
	    !FUNC7(hdr->frame_control) &&
	    FUNC5(&local->hw, AMPDU_AGGREGATION) &&
	    !FUNC5(&local->hw, TX_AMPDU_SETUP_IN_HW)) {
		struct tid_ampdu_tx *tid_tx;

		tid = FUNC4(hdr);

		tid_tx = FUNC12(tx->sta->ampdu_mlme.tid_tx[tid]);
		if (tid_tx) {
			bool queued;

			queued = FUNC8(tx, skb, info,
						       tid_tx, tid);

			if (FUNC16(queued))
				return TX_QUEUED;
		}
	}

	if (FUNC9(hdr->addr1)) {
		tx->flags &= ~IEEE80211_TX_UNICAST;
		info->flags |= IEEE80211_TX_CTL_NO_ACK;
	} else
		tx->flags |= IEEE80211_TX_UNICAST;

	if (!(info->flags & IEEE80211_TX_CTL_DONTFRAG)) {
		if (!(tx->flags & IEEE80211_TX_UNICAST) ||
		    skb->len + FCS_LEN <= local->hw.wiphy->frag_threshold ||
		    info->flags & IEEE80211_TX_CTL_AMPDU)
			info->flags |= IEEE80211_TX_CTL_DONTFRAG;
	}

	if (!tx->sta)
		info->flags |= IEEE80211_TX_CTL_CLEAR_PS_FILT;
	else if (FUNC15(tx->sta, WLAN_STA_CLEAR_PS_FILT)) {
		info->flags |= IEEE80211_TX_CTL_CLEAR_PS_FILT;
		FUNC3(tx->sta);
	}

	info->flags |= IEEE80211_TX_CTL_FIRST_FRAGMENT;

	return TX_CONTINUE;
}