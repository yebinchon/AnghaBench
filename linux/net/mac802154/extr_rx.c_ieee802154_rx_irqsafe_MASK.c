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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int /*<<< orphan*/  pkt_type; } ;
struct ieee802154_local {int /*<<< orphan*/  tasklet; int /*<<< orphan*/  skb_queue; } ;
struct ieee802154_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lqi; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE802154_RX_MSG ; 
 struct ieee802154_local* FUNC0 (struct ieee802154_hw*) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct ieee802154_hw *hw, struct sk_buff *skb, u8 lqi)
{
	struct ieee802154_local *local = FUNC0(hw);

	FUNC1(skb)->lqi = lqi;
	skb->pkt_type = IEEE802154_RX_MSG;
	FUNC2(&local->skb_queue, skb);
	FUNC3(&local->tasklet);
}