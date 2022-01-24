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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net_device*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

netdev_tx_t FUNC6(struct sk_buff *skb,
				       struct net_device *dev)
{
	if (FUNC5(FUNC4(skb, dev))) {
		struct sk_buff_head queue;

		FUNC2(&queue);
		FUNC3(skb, dev, &queue);
		while ((skb = FUNC1(&queue)))
			FUNC0(skb, dev, 0, 0);
	} else {
		FUNC0(skb, dev, 0, 0);
	}

	return NETDEV_TX_OK;
}