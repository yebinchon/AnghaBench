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
struct sk_buff {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct netdev_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct netdev_queue*) ; 
 int NETDEV_TX_BUSY ; 
 struct sk_buff* FUNC2 (struct sk_buff*,struct net_device*,struct netdev_queue*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 
 struct sk_buff* FUNC12 (struct sk_buff*,struct net_device*,int*) ; 

bool FUNC13(struct sk_buff *skb, struct Qdisc *q,
		     struct net_device *dev, struct netdev_queue *txq,
		     spinlock_t *root_lock, bool validate)
{
	int ret = NETDEV_TX_BUSY;
	bool again = false;

	/* And release qdisc */
	if (root_lock)
		FUNC10(root_lock);

	/* Note that we validate skb (GSO, checksum, ...) outside of locks */
	if (validate)
		skb = FUNC12(skb, dev, &again);

#ifdef CONFIG_XFRM_OFFLOAD
	if (unlikely(again)) {
		if (root_lock)
			spin_lock(root_lock);

		dev_requeue_skb(skb, q);
		return false;
	}
#endif

	if (FUNC5(skb)) {
		FUNC0(dev, txq, FUNC8());
		if (!FUNC7(txq))
			skb = FUNC2(skb, dev, txq, &ret);

		FUNC1(dev, txq);
	} else {
		if (root_lock)
			FUNC9(root_lock);
		return true;
	}

	if (root_lock)
		FUNC9(root_lock);

	if (!FUNC4(ret)) {
		/* Driver returned NETDEV_TX_BUSY - requeue skb */
		if (FUNC11(ret != NETDEV_TX_BUSY))
			FUNC6("BUG %s code %d qlen %d\n",
					     dev->name, ret, q->q.qlen);

		FUNC3(skb, q);
		return false;
	}

	return true;
}