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
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {unsigned int num_tx_queues; } ;
struct mq_sched {struct Qdisc** qdiscs; } ;
struct Qdisc {scalar_t__ parent; int flags; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TCQ_F_MQROOT ; 
 int TCQ_F_NOPARENT ; 
 int TCQ_F_ONETXQUEUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 scalar_t__ TC_H_ROOT ; 
 int /*<<< orphan*/  TC_MQ_CREATE ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,unsigned int) ; 
 struct Qdisc** FUNC4 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*,int /*<<< orphan*/ ) ; 
 struct netdev_queue* FUNC6 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 struct Qdisc* FUNC8 (struct netdev_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct net_device* FUNC9 (struct Qdisc*) ; 
 struct mq_sched* FUNC10 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC11(struct Qdisc *sch, struct nlattr *opt,
		   struct netlink_ext_ack *extack)
{
	struct net_device *dev = FUNC9(sch);
	struct mq_sched *priv = FUNC10(sch);
	struct netdev_queue *dev_queue;
	struct Qdisc *qdisc;
	unsigned int ntx;

	if (sch->parent != TC_H_ROOT)
		return -EOPNOTSUPP;

	if (!FUNC7(dev))
		return -EOPNOTSUPP;

	/* pre-allocate qdiscs, attachment can't fail */
	priv->qdiscs = FUNC4(dev->num_tx_queues, sizeof(priv->qdiscs[0]),
			       GFP_KERNEL);
	if (!priv->qdiscs)
		return -ENOMEM;

	for (ntx = 0; ntx < dev->num_tx_queues; ntx++) {
		dev_queue = FUNC6(dev, ntx);
		qdisc = FUNC8(dev_queue, FUNC3(dev, ntx),
					  FUNC1(FUNC0(sch->handle),
						    FUNC2(ntx + 1)),
					  extack);
		if (!qdisc)
			return -ENOMEM;
		priv->qdiscs[ntx] = qdisc;
		qdisc->flags |= TCQ_F_ONETXQUEUE | TCQ_F_NOPARENT;
	}

	sch->flags |= TCQ_F_MQROOT;

	FUNC5(sch, TC_MQ_CREATE);
	return 0;
}