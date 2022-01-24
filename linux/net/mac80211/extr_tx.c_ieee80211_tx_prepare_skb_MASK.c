#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct ieee80211_vif {int /*<<< orphan*/ * hw_queue; } ;
struct TYPE_3__ {struct ieee80211_vif* vif; } ;
struct ieee80211_tx_info {int band; int /*<<< orphan*/  hw_queue; TYPE_1__ control; } ;
struct ieee80211_tx_data {int /*<<< orphan*/  skbs; TYPE_2__* sta; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {struct ieee80211_sta sta; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 scalar_t__ TX_DROP ; 
 scalar_t__ FUNC1 (int) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct ieee80211_sub_if_data*,struct ieee80211_tx_data*,int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct ieee80211_tx_data*) ; 
 size_t FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sub_if_data* FUNC9 (struct ieee80211_vif*) ; 

bool FUNC10(struct ieee80211_hw *hw,
			      struct ieee80211_vif *vif, struct sk_buff *skb,
			      int band, struct ieee80211_sta **sta)
{
	struct ieee80211_sub_if_data *sdata = FUNC9(vif);
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct ieee80211_tx_data tx;
	struct sk_buff *skb2;

	if (FUNC5(sdata, &tx, NULL, skb) == TX_DROP)
		return false;

	info->band = band;
	info->control.vif = vif;
	info->hw_queue = vif->hw_queue[FUNC7(skb)];

	if (FUNC6(&tx))
		return false;

	if (sta) {
		if (tx.sta)
			*sta = &tx.sta->sta;
		else
			*sta = NULL;
	}

	/* this function isn't suitable for fragmented data frames */
	skb2 = FUNC2(&tx.skbs);
	if (FUNC1(skb2 != skb || !FUNC8(&tx.skbs))) {
		FUNC3(hw, skb2);
		FUNC4(hw, &tx.skbs);
		return false;
	}

	return true;
}