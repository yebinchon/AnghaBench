#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int /*<<< orphan*/  dev; scalar_t__ data; } ;
struct ps_data {scalar_t__ dtim_count; int /*<<< orphan*/  bc_buf; int /*<<< orphan*/  dtim_bc_mc; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_info {int /*<<< orphan*/  band; } ;
struct ieee80211_tx_data {int /*<<< orphan*/  flags; } ;
struct TYPE_12__ {scalar_t__ type; int /*<<< orphan*/  chanctx_conf; } ;
struct TYPE_8__ {struct ps_data ps; } ;
struct TYPE_7__ {struct ps_data ps; int /*<<< orphan*/  beacon; } ;
struct TYPE_9__ {TYPE_2__ mesh; TYPE_1__ ap; } ;
struct ieee80211_sub_if_data {TYPE_6__ vif; TYPE_3__ u; } ;
struct ieee80211_local {int /*<<< orphan*/  total_ps_buffered; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_11__ {TYPE_4__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_5__ def; } ;
struct beacon_data {int /*<<< orphan*/  head; } ;
struct TYPE_10__ {int /*<<< orphan*/  band; } ;

/* Variables and functions */
 struct ieee80211_sub_if_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_FCTL_MOREDATA ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  IEEE80211_TX_PS_BUFFERED ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ieee80211_local* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,struct ieee80211_tx_data*,int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC6 (TYPE_6__*) ; 
 scalar_t__ FUNC7 (struct ieee80211_tx_data*) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 struct sk_buff* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sub_if_data* FUNC13 (struct ieee80211_vif*) ; 

struct sk_buff *
FUNC14(struct ieee80211_hw *hw,
			  struct ieee80211_vif *vif)
{
	struct ieee80211_local *local = FUNC3(hw);
	struct sk_buff *skb = NULL;
	struct ieee80211_tx_data tx;
	struct ieee80211_sub_if_data *sdata;
	struct ps_data *ps;
	struct ieee80211_tx_info *info;
	struct ieee80211_chanctx_conf *chanctx_conf;

	sdata = FUNC13(vif);

	FUNC9();
	chanctx_conf = FUNC8(sdata->vif.chanctx_conf);

	if (!chanctx_conf)
		goto out;

	if (sdata->vif.type == NL80211_IFTYPE_AP) {
		struct beacon_data *beacon =
				FUNC8(sdata->u.ap.beacon);

		if (!beacon || !beacon->head)
			goto out;

		ps = &sdata->u.ap.ps;
	} else if (FUNC6(&sdata->vif)) {
		ps = &sdata->u.mesh.ps;
	} else {
		goto out;
	}

	if (ps->dtim_count != 0 || !ps->dtim_bc_mc)
		goto out; /* send buffered bc/mc only after DTIM beacon */

	while (1) {
		skb = FUNC11(&ps->bc_buf);
		if (!skb)
			goto out;
		local->total_ps_buffered--;

		if (!FUNC12(&ps->bc_buf) && skb->len >= 2) {
			struct ieee80211_hdr *hdr =
				(struct ieee80211_hdr *) skb->data;
			/* more buffered multicast/broadcast frames ==> set
			 * MoreData flag in IEEE 802.11 header to inform PS
			 * STAs */
			hdr->frame_control |=
				FUNC2(IEEE80211_FCTL_MOREDATA);
		}

		if (sdata->vif.type == NL80211_IFTYPE_AP)
			sdata = FUNC0(skb->dev);
		if (!FUNC5(sdata, &tx, NULL, skb))
			break;
		FUNC4(hw, skb);
	}

	info = FUNC1(skb);

	tx.flags |= IEEE80211_TX_PS_BUFFERED;
	info->band = chanctx_conf->def.chan->band;

	if (FUNC7(&tx))
		skb = NULL;
 out:
	FUNC10();

	return skb;
}