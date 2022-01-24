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
struct sk_buff {scalar_t__ tc_at_ingress; int /*<<< orphan*/  sk; struct net_device* dev; } ;
struct netdev_queue {int xmit_lock_owner; int /*<<< orphan*/  qdisc; } ;
struct net_device {int priv_flags; int flags; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  name; } ;
struct Qdisc {scalar_t__ enqueue; } ;
struct TYPE_2__ {int tx_flags; } ;

/* Variables and functions */
 int ENETDOWN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct netdev_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct netdev_queue*) ; 
 int IFF_UP ; 
 int IFF_XMIT_DST_RELEASE ; 
 int /*<<< orphan*/  SCM_TSTAMP_SCHED ; 
 int SKBTX_SCHED_TSTAMP ; 
 int FUNC2 (struct sk_buff*,struct Qdisc*,struct net_device*,struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,struct net_device*,struct netdev_queue*,int*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  egress_needed_key ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 struct netdev_queue* FUNC12 (struct net_device*,struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 struct Qdisc* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 struct sk_buff* FUNC18 (struct sk_buff*,int*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 TYPE_1__* FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*) ; 
 int FUNC24 () ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct sk_buff*) ; 
 scalar_t__ FUNC27 (int) ; 
 struct sk_buff* FUNC28 (struct sk_buff*,struct net_device*,int*) ; 

__attribute__((used)) static int FUNC29(struct sk_buff *skb, struct net_device *sb_dev)
{
	struct net_device *dev = skb->dev;
	struct netdev_queue *txq;
	struct Qdisc *q;
	int rc = -ENOMEM;
	bool again = false;

	FUNC21(skb);

	if (FUNC27(FUNC22(skb)->tx_flags & SKBTX_SCHED_TSTAMP))
		FUNC3(skb, NULL, skb->sk, SCM_TSTAMP_SCHED);

	/* Disable soft irqs for various locks below. Also
	 * stops preemption for RCU.
	 */
	FUNC16();

	FUNC23(skb);

	FUNC14(skb);
#ifdef CONFIG_NET_CLS_ACT
	skb->tc_at_ingress = 0;
# ifdef CONFIG_NET_EGRESS
	if (static_branch_unlikely(&egress_needed_key)) {
		skb = sch_handle_egress(skb, &rc, dev);
		if (!skb)
			goto out;
	}
# endif
#endif
	/* If device/qdisc don't need skb->dst, release it right now while
	 * its hot in this cpu cache.
	 */
	if (dev->priv_flags & IFF_XMIT_DST_RELEASE)
		FUNC19(skb);
	else
		FUNC20(skb);

	txq = FUNC12(dev, skb, sb_dev);
	q = FUNC15(txq->qdisc);

	FUNC26(skb);
	if (q->enqueue) {
		rc = FUNC2(skb, q, dev, txq);
		goto out;
	}

	/* The device has no queue. Common case for software devices:
	 * loopback, all the sorts of tunnels...

	 * Really, it is unlikely that netif_tx_lock protection is necessary
	 * here.  (f.e. loopback and IP tunnels are clean ignoring statistics
	 * counters.)
	 * However, it is possible, that they rely on protection
	 * made by us here.

	 * Check this and shot the lock. It is not prone from deadlocks.
	 *Either shot noqueue qdisc, it is even simpler 8)
	 */
	if (dev->flags & IFF_UP) {
		int cpu = FUNC24(); /* ok because BHs are off */

		if (txq->xmit_lock_owner != cpu) {
			if (FUNC7())
				goto recursion_alert;

			skb = FUNC28(skb, dev, &again);
			if (!skb)
				goto out;

			FUNC0(dev, txq, cpu);

			if (!FUNC13(txq)) {
				FUNC9();
				skb = FUNC5(skb, dev, txq, &rc);
				FUNC8();
				if (FUNC6(rc)) {
					FUNC1(dev, txq);
					goto out;
				}
			}
			FUNC1(dev, txq);
			FUNC11("Virtual device %s asks to queue packet!\n",
					     dev->name);
		} else {
			/* Recursion is detected! It is possible,
			 * unfortunately
			 */
recursion_alert:
			FUNC11("Dead loop on virtual device %s, fix it urgently!\n",
					     dev->name);
		}
	}

	rc = -ENETDOWN;
	FUNC17();

	FUNC4(&dev->tx_dropped);
	FUNC10(skb);
	return rc;
out:
	FUNC17();
	return rc;
}