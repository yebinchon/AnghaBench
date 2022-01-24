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
struct netdev_queue {struct Qdisc* qdisc_sleeping; } ;
struct net_device {int priv_flags; struct Qdisc* qdisc; } ;
struct Qdisc {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* attach ) (struct Qdisc*) ;} ;

/* Variables and functions */
 int IFF_NO_QUEUE ; 
 int /*<<< orphan*/  TC_H_ROOT ; 
 int /*<<< orphan*/  attach_one_default_qdisc ; 
 int /*<<< orphan*/  mq_qdisc_ops ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct netdev_queue* FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct Qdisc noop_qdisc ; 
 struct Qdisc* FUNC3 (struct netdev_queue*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct netdev_queue *txq;
	struct Qdisc *qdisc;

	txq = FUNC1(dev, 0);

	if (!FUNC2(dev) ||
	    dev->priv_flags & IFF_NO_QUEUE) {
		FUNC0(dev, attach_one_default_qdisc, NULL);
		dev->qdisc = txq->qdisc_sleeping;
		FUNC5(dev->qdisc);
	} else {
		qdisc = FUNC3(txq, &mq_qdisc_ops, TC_H_ROOT, NULL);
		if (qdisc) {
			dev->qdisc = qdisc;
			qdisc->ops->attach(qdisc);
		}
	}
#ifdef CONFIG_NET_SCHED
	if (dev->qdisc != &noop_qdisc)
		qdisc_hash_add(dev->qdisc, false);
#endif
}