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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vif; } ;
struct ieee80211_tx_info {int hw_queue; TYPE_1__ control; } ;
struct ieee80211_hw {int queues; } ;
struct ieee80211_local {int /*<<< orphan*/  queue_stop_reason_lock; int /*<<< orphan*/ * pending; struct ieee80211_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_QUEUE_STOP_REASON_SKB_ADD ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,struct sk_buff*) ; 
 struct sk_buff* FUNC6 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC9(struct ieee80211_local *local,
				struct sk_buff_head *skbs)
{
	struct ieee80211_hw *hw = &local->hw;
	struct sk_buff *skb;
	unsigned long flags;
	int queue, i;

	FUNC7(&local->queue_stop_reason_lock, flags);
	while ((skb = FUNC6(skbs))) {
		struct ieee80211_tx_info *info = FUNC0(skb);

		if (FUNC1(!info->control.vif)) {
			FUNC5(&local->hw, skb);
			continue;
		}

		queue = info->hw_queue;

		FUNC2(hw, queue,
				IEEE80211_QUEUE_STOP_REASON_SKB_ADD,
				false);

		FUNC4(&local->pending[queue], skb);
	}

	for (i = 0; i < hw->queues; i++)
		FUNC3(hw, i,
			IEEE80211_QUEUE_STOP_REASON_SKB_ADD,
			false, &flags);
	FUNC8(&local->queue_stop_reason_lock, flags);
}