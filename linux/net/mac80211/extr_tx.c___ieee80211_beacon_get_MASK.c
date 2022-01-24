#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
typedef  int /*<<< orphan*/  txrc ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_13__ {int idx; } ;
struct ieee80211_tx_rate_control {int bss; int /*<<< orphan*/  rate_idx_mask; TYPE_4__ reported_rate; struct sk_buff* skb; int /*<<< orphan*/ * bss_conf; int /*<<< orphan*/  sband; struct ieee80211_hw* hw; scalar_t__* csa_counter_offs; scalar_t__ tim_length; scalar_t__ tim_offset; } ;
struct TYPE_14__ {struct ieee80211_vif* vif; } ;
struct ieee80211_tx_info {int flags; int band; TYPE_5__ control; } ;
struct TYPE_18__ {scalar_t__ type; int /*<<< orphan*/  bss_conf; int /*<<< orphan*/  chanctx_conf; } ;
struct ieee80211_if_mesh {int /*<<< orphan*/  ps; TYPE_7__* sync_ops; int /*<<< orphan*/  beacon; } ;
struct ieee80211_if_ibss {int /*<<< orphan*/  presp; } ;
struct ieee80211_if_ap {int /*<<< orphan*/  ps; int /*<<< orphan*/  beacon; } ;
struct TYPE_15__ {struct ieee80211_if_mesh mesh; struct ieee80211_if_ibss ibss; struct ieee80211_if_ap ap; } ;
struct ieee80211_sub_if_data {int /*<<< orphan*/ * rc_rateidx_mask; TYPE_9__ vif; TYPE_6__ u; } ;
struct ieee80211_mutable_offsets {int bss; int /*<<< orphan*/  rate_idx_mask; TYPE_4__ reported_rate; struct sk_buff* skb; int /*<<< orphan*/ * bss_conf; int /*<<< orphan*/  sband; struct ieee80211_hw* hw; scalar_t__* csa_counter_offs; scalar_t__ tim_length; scalar_t__ tim_offset; } ;
struct TYPE_17__ {TYPE_3__* wiphy; scalar_t__ extra_beacon_tailroom; } ;
struct ieee80211_local {TYPE_8__ hw; scalar_t__ tx_headroom; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_11__ {TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; } ;
struct beacon_data {scalar_t__* csa_counter_offsets; scalar_t__ tail_len; scalar_t__ tail; scalar_t__ head_len; scalar_t__ head; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_16__ {int /*<<< orphan*/  (* adjust_tsf ) (struct ieee80211_sub_if_data*,struct beacon_data*) ;} ;
struct TYPE_12__ {int /*<<< orphan*/ * bands; } ;
struct TYPE_10__ {int band; } ;

/* Variables and functions */
 int IEEE80211_FTYPE_MGMT ; 
 int IEEE80211_MAX_CSA_COUNTERS_NUM ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_STYPE_BEACON ; 
 int IEEE80211_TX_CTL_ASSIGN_SEQ ; 
 int IEEE80211_TX_CTL_CLEAR_PS_FILT ; 
 int IEEE80211_TX_CTL_FIRST_FRAGMENT ; 
 int IEEE80211_TX_CTL_NO_ACK ; 
 int IEEE80211_TX_INTFL_DONT_ENCRYPT ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct beacon_data*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct sk_buff* FUNC4 (scalar_t__) ; 
 struct ieee80211_local* FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_sub_if_data*,struct beacon_data*) ; 
 scalar_t__ FUNC9 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_tx_rate_control*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,struct ieee80211_tx_rate_control*) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_sub_if_data*,struct beacon_data*) ; 
 struct ieee80211_sub_if_data* FUNC18 (struct ieee80211_vif*) ; 

__attribute__((used)) static struct sk_buff *
FUNC19(struct ieee80211_hw *hw,
		       struct ieee80211_vif *vif,
		       struct ieee80211_mutable_offsets *offs,
		       bool is_template)
{
	struct ieee80211_local *local = FUNC5(hw);
	struct beacon_data *beacon = NULL;
	struct sk_buff *skb = NULL;
	struct ieee80211_tx_info *info;
	struct ieee80211_sub_if_data *sdata = NULL;
	enum nl80211_band band;
	struct ieee80211_tx_rate_control txrc;
	struct ieee80211_chanctx_conf *chanctx_conf;
	int csa_off_base = 0;

	FUNC13();

	sdata = FUNC18(vif);
	chanctx_conf = FUNC12(sdata->vif.chanctx_conf);

	if (!FUNC7(sdata) || !chanctx_conf)
		goto out;

	if (offs)
		FUNC10(offs, 0, sizeof(*offs));

	if (sdata->vif.type == NL80211_IFTYPE_AP) {
		struct ieee80211_if_ap *ap = &sdata->u.ap;

		beacon = FUNC12(ap->beacon);
		if (beacon) {
			if (beacon->csa_counter_offsets[0]) {
				if (!is_template)
					FUNC2(beacon);

				FUNC8(sdata, beacon);
			}

			/*
			 * headroom, head length,
			 * tail length and maximum TIM length
			 */
			skb = FUNC4(local->tx_headroom +
					    beacon->head_len +
					    beacon->tail_len + 256 +
					    local->hw.extra_beacon_tailroom);
			if (!skb)
				goto out;

			FUNC16(skb, local->tx_headroom);
			FUNC15(skb, beacon->head, beacon->head_len);

			FUNC6(sdata, &ap->ps, skb,
						 is_template);

			if (offs) {
				offs->tim_offset = beacon->head_len;
				offs->tim_length = skb->len - beacon->head_len;

				/* for AP the csa offsets are from tail */
				csa_off_base = skb->len;
			}

			if (beacon->tail)
				FUNC15(skb, beacon->tail,
					     beacon->tail_len);
		} else
			goto out;
	} else if (sdata->vif.type == NL80211_IFTYPE_ADHOC) {
		struct ieee80211_if_ibss *ifibss = &sdata->u.ibss;
		struct ieee80211_hdr *hdr;

		beacon = FUNC12(ifibss->presp);
		if (!beacon)
			goto out;

		if (beacon->csa_counter_offsets[0]) {
			if (!is_template)
				FUNC2(beacon);

			FUNC8(sdata, beacon);
		}

		skb = FUNC4(local->tx_headroom + beacon->head_len +
				    local->hw.extra_beacon_tailroom);
		if (!skb)
			goto out;
		FUNC16(skb, local->tx_headroom);
		FUNC15(skb, beacon->head, beacon->head_len);

		hdr = (struct ieee80211_hdr *) skb->data;
		hdr->frame_control = FUNC3(IEEE80211_FTYPE_MGMT |
						 IEEE80211_STYPE_BEACON);
	} else if (FUNC9(&sdata->vif)) {
		struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;

		beacon = FUNC12(ifmsh->beacon);
		if (!beacon)
			goto out;

		if (beacon->csa_counter_offsets[0]) {
			if (!is_template)
				/* TODO: For mesh csa_counter is in TU, so
				 * decrementing it by one isn't correct, but
				 * for now we leave it consistent with overall
				 * mac80211's behavior.
				 */
				FUNC2(beacon);

			FUNC8(sdata, beacon);
		}

		if (ifmsh->sync_ops)
			ifmsh->sync_ops->adjust_tsf(sdata, beacon);

		skb = FUNC4(local->tx_headroom +
				    beacon->head_len +
				    256 + /* TIM IE */
				    beacon->tail_len +
				    local->hw.extra_beacon_tailroom);
		if (!skb)
			goto out;
		FUNC16(skb, local->tx_headroom);
		FUNC15(skb, beacon->head, beacon->head_len);
		FUNC6(sdata, &ifmsh->ps, skb, is_template);

		if (offs) {
			offs->tim_offset = beacon->head_len;
			offs->tim_length = skb->len - beacon->head_len;
		}

		FUNC15(skb, beacon->tail, beacon->tail_len);
	} else {
		FUNC1(1);
		goto out;
	}

	/* CSA offsets */
	if (offs && beacon) {
		int i;

		for (i = 0; i < IEEE80211_MAX_CSA_COUNTERS_NUM; i++) {
			u16 csa_off = beacon->csa_counter_offsets[i];

			if (!csa_off)
				continue;

			offs->csa_counter_offs[i] = csa_off_base + csa_off;
		}
	}

	band = chanctx_conf->def.chan->band;

	info = FUNC0(skb);

	info->flags |= IEEE80211_TX_INTFL_DONT_ENCRYPT;
	info->flags |= IEEE80211_TX_CTL_NO_ACK;
	info->band = band;

	FUNC10(&txrc, 0, sizeof(txrc));
	txrc.hw = hw;
	txrc.sband = local->hw.wiphy->bands[band];
	txrc.bss_conf = &sdata->vif.bss_conf;
	txrc.skb = skb;
	txrc.reported_rate.idx = -1;
	txrc.rate_idx_mask = sdata->rc_rateidx_mask[band];
	txrc.bss = true;
	FUNC11(sdata, NULL, &txrc);

	info->control.vif = vif;

	info->flags |= IEEE80211_TX_CTL_CLEAR_PS_FILT |
			IEEE80211_TX_CTL_ASSIGN_SEQ |
			IEEE80211_TX_CTL_FIRST_FRAGMENT;
 out:
	FUNC14();
	return skb;

}