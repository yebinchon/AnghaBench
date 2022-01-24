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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {struct net_device* dev; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int /*<<< orphan*/  tx_dropped; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct netdev_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct netdev_queue*) ; 
 int NETDEV_TX_BUSY ; 
 int NET_XMIT_DROP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (struct sk_buff*,struct net_device*,struct netdev_queue*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct netdev_queue*) ; 
 struct netdev_queue* FUNC12 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (int) ; 
 struct sk_buff* FUNC16 (struct sk_buff*,struct net_device*,int*) ; 

int FUNC17(struct sk_buff *skb, u16 queue_id)
{
	struct net_device *dev = skb->dev;
	struct sk_buff *orig_skb = skb;
	struct netdev_queue *txq;
	int ret = NETDEV_TX_BUSY;
	bool again = false;

	if (FUNC15(!FUNC10(dev) ||
		     !FUNC9(dev)))
		goto drop;

	skb = FUNC16(skb, dev, &again);
	if (skb != orig_skb)
		goto drop;

	FUNC13(skb, queue_id);
	txq = FUNC12(dev, skb);

	FUNC6();

	FUNC0(dev, txq, FUNC14());
	if (!FUNC11(txq))
		ret = FUNC8(skb, dev, txq, false);
	FUNC1(dev, txq);

	FUNC7();

	if (!FUNC3(ret))
		FUNC4(skb);

	return ret;
drop:
	FUNC2(&dev->tx_dropped);
	FUNC5(skb);
	return NET_XMIT_DROP;
}