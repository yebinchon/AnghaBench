#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int u16 ;
struct tid_ampdu_rx {int /*<<< orphan*/  last_rx; scalar_t__ timeout; } ;
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  unexpected_agg; int /*<<< orphan*/  agg_session_valid; int /*<<< orphan*/ * tid_rx; } ;
struct sta_info {TYPE_2__ sta; TYPE_1__ ampdu_mlme; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_rx_data {TYPE_3__* sdata; struct sta_info* sta; struct ieee80211_local* local; struct sk_buff* skb; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; } ;
struct ieee80211_hdr {int frame_control; int /*<<< orphan*/  seq_ctrl; int /*<<< orphan*/  addr1; } ;
struct TYPE_7__ {int /*<<< orphan*/  work; int /*<<< orphan*/  skb_queue; } ;

/* Variables and functions */
 size_t IEEE80211_QOS_CTL_ACK_POLICY_BLOCKACK ; 
 size_t IEEE80211_QOS_CTL_ACK_POLICY_MASK ; 
 size_t IEEE80211_QOS_CTL_ACK_POLICY_NORMAL ; 
 int IEEE80211_SCTL_FRAG ; 
 int /*<<< orphan*/  IEEE80211_STYPE_NULLFUNC ; 
 int /*<<< orphan*/  WLAN_BACK_RECIPIENT ; 
 int /*<<< orphan*/  WLAN_REASON_QSTA_REQUIRE_SETUP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,struct sk_buff*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 size_t* FUNC2 (struct ieee80211_hdr*) ; 
 size_t FUNC3 (struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_3__*,struct tid_ampdu_rx*,struct sk_buff*,struct sk_buff_head*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 struct tid_ampdu_rx* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static void FUNC15(struct ieee80211_rx_data *rx,
				       struct sk_buff_head *frames)
{
	struct sk_buff *skb = rx->skb;
	struct ieee80211_local *local = rx->local;
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
	struct sta_info *sta = rx->sta;
	struct tid_ampdu_rx *tid_agg_rx;
	u16 sc;
	u8 tid, ack_policy;

	if (!FUNC4(hdr->frame_control) ||
	    FUNC8(hdr->addr1))
		goto dont_reorder;

	/*
	 * filter the QoS data rx stream according to
	 * STA/TID and check if this STA/TID is on aggregation
	 */

	if (!sta)
		goto dont_reorder;

	ack_policy = *FUNC2(hdr) &
		     IEEE80211_QOS_CTL_ACK_POLICY_MASK;
	tid = FUNC3(hdr);

	tid_agg_rx = FUNC10(sta->ampdu_mlme.tid_rx[tid]);
	if (!tid_agg_rx) {
		if (ack_policy == IEEE80211_QOS_CTL_ACK_POLICY_BLOCKACK &&
		    !FUNC13(tid, rx->sta->ampdu_mlme.agg_session_valid) &&
		    !FUNC12(tid, rx->sta->ampdu_mlme.unexpected_agg))
			FUNC6(rx->sdata, rx->sta->sta.addr, tid,
					     WLAN_BACK_RECIPIENT,
					     WLAN_REASON_QSTA_REQUIRE_SETUP);
		goto dont_reorder;
	}

	/* qos null data frames are excluded */
	if (FUNC14(hdr->frame_control & FUNC1(IEEE80211_STYPE_NULLFUNC)))
		goto dont_reorder;

	/* not part of a BA session */
	if (ack_policy != IEEE80211_QOS_CTL_ACK_POLICY_BLOCKACK &&
	    ack_policy != IEEE80211_QOS_CTL_ACK_POLICY_NORMAL)
		goto dont_reorder;

	/* new, potentially un-ordered, ampdu frame - process it */

	/* reset session timer */
	if (tid_agg_rx->timeout)
		tid_agg_rx->last_rx = jiffies;

	/* if this mpdu is fragmented - terminate rx aggregation session */
	sc = FUNC9(hdr->seq_ctrl);
	if (sc & IEEE80211_SCTL_FRAG) {
		FUNC11(&rx->sdata->skb_queue, skb);
		FUNC5(&local->hw, &rx->sdata->work);
		return;
	}

	/*
	 * No locking needed -- we will only ever process one
	 * RX packet at a time, and thus own tid_agg_rx. All
	 * other code manipulating it needs to (and does) make
	 * sure that we cannot get to it any more before doing
	 * anything with it.
	 */
	if (FUNC7(rx->sdata, tid_agg_rx, skb,
					     frames))
		return;

 dont_reorder:
	FUNC0(frames, skb);
}