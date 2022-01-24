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
struct sta_info {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct TYPE_5__ {int /*<<< orphan*/  vif; } ;
struct ieee80211_tx_info {int flags; int /*<<< orphan*/  band; TYPE_1__ control; } ;
struct TYPE_6__ {int /*<<< orphan*/  chanctx_conf; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; } ;
struct ieee80211_local {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr1; } ;
struct TYPE_8__ {TYPE_3__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_4__ def; } ;
struct TYPE_7__ {int /*<<< orphan*/  band; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_INTFL_NEED_TXPROCESSING ; 
 int FUNC1 (struct ieee80211_local*,struct sk_buff_head*,int /*<<< orphan*/ ,struct sta_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ *,struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 struct ieee80211_chanctx_conf* FUNC6 (int /*<<< orphan*/ ) ; 
 struct sta_info* FUNC7 (struct ieee80211_sub_if_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 struct ieee80211_sub_if_data* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC10(struct ieee80211_local *local,
				     struct sk_buff *skb)
{
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct ieee80211_sub_if_data *sdata;
	struct sta_info *sta;
	struct ieee80211_hdr *hdr;
	bool result;
	struct ieee80211_chanctx_conf *chanctx_conf;

	sdata = FUNC9(info->control.vif);

	if (info->flags & IEEE80211_TX_INTFL_NEED_TXPROCESSING) {
		chanctx_conf = FUNC6(sdata->vif.chanctx_conf);
		if (FUNC8(!chanctx_conf)) {
			FUNC4(skb);
			return true;
		}
		info->band = chanctx_conf->def.chan->band;
		result = FUNC5(sdata, NULL, skb, true, 0);
	} else {
		struct sk_buff_head skbs;

		FUNC2(&skbs);
		FUNC3(&skbs, skb);

		hdr = (struct ieee80211_hdr *)skb->data;
		sta = FUNC7(sdata, hdr->addr1);

		result = FUNC1(local, &skbs, skb->len, sta, true);
	}

	return result;
}