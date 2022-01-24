#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  pkt_type; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_local {int /*<<< orphan*/  tasklet; int /*<<< orphan*/  tx_status_drop; int /*<<< orphan*/  skb_queue_unreliable; int /*<<< orphan*/  skb_queue; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IEEE80211_IRQSAFE_QUEUE_LIMIT ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_REQ_TX_STATUS ; 
 int /*<<< orphan*/  IEEE80211_TX_STATUS_MSG ; 
 struct ieee80211_local* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct ieee80211_hw *hw,
				 struct sk_buff *skb)
{
	struct ieee80211_local *local = FUNC2(hw);
	struct ieee80211_tx_info *info = FUNC1(skb);
	int tmp;

	skb->pkt_type = IEEE80211_TX_STATUS_MSG;
	FUNC6(info->flags & IEEE80211_TX_CTL_REQ_TX_STATUS ?
		       &local->skb_queue : &local->skb_queue_unreliable, skb);
	tmp = FUNC5(&local->skb_queue) +
		FUNC5(&local->skb_queue_unreliable);
	while (tmp > IEEE80211_IRQSAFE_QUEUE_LIMIT &&
	       (skb = FUNC4(&local->skb_queue_unreliable))) {
		FUNC3(hw, skb);
		tmp--;
		FUNC0(local->tx_status_drop);
	}
	FUNC7(&local->tasklet);
}