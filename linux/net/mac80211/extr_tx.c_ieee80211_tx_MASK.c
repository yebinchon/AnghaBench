#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sta_info {int dummy; } ;
struct sk_buff {int len; } ;
struct ieee80211_tx_info {int flags; int /*<<< orphan*/  hw_queue; } ;
struct ieee80211_tx_data {int /*<<< orphan*/  sta; int /*<<< orphan*/  skbs; int /*<<< orphan*/  skb; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/ * hw_queue; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; struct ieee80211_local* local; } ;
struct ieee80211_local {int /*<<< orphan*/  hw; } ;
typedef  scalar_t__ ieee80211_tx_result ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_TX_OFFCHAN ; 
 int /*<<< orphan*/  QUEUE_CONTROL ; 
 scalar_t__ TX_DROP ; 
 scalar_t__ TX_QUEUED ; 
 int FUNC1 (struct ieee80211_local*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ieee80211_local*,struct ieee80211_sub_if_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct ieee80211_sub_if_data*,struct ieee80211_tx_data*,struct sta_info*,struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct ieee80211_tx_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_tx_data*) ; 
 size_t FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static bool FUNC11(struct ieee80211_sub_if_data *sdata,
			 struct sta_info *sta, struct sk_buff *skb,
			 bool txpending, u32 txdata_flags)
{
	struct ieee80211_local *local = sdata->local;
	struct ieee80211_tx_data tx;
	ieee80211_tx_result res_prepare;
	struct ieee80211_tx_info *info = FUNC0(skb);
	bool result = true;
	int led_len;

	if (FUNC10(skb->len < 10)) {
		FUNC2(skb);
		return true;
	}

	/* initialises tx */
	led_len = skb->len;
	res_prepare = FUNC6(sdata, &tx, sta, skb);

	tx.flags |= txdata_flags;

	if (FUNC10(res_prepare == TX_DROP)) {
		FUNC3(&local->hw, skb);
		return true;
	} else if (FUNC10(res_prepare == TX_QUEUED)) {
		return true;
	}

	/* set up hw_queue value early */
	if (!(info->flags & IEEE80211_TX_CTL_TX_OFFCHAN) ||
	    !FUNC4(&local->hw, QUEUE_CONTROL))
		info->hw_queue =
			sdata->vif.hw_queue[FUNC9(skb)];

	if (FUNC7(&tx))
		return true;

	if (FUNC5(local, sdata, tx.sta, tx.skb))
		return true;

	if (!FUNC8(&tx))
		result = FUNC1(local, &tx.skbs, led_len,
					tx.sta, txpending);

	return result;
}