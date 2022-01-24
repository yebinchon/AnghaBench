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
struct netdev_queue {struct Qdisc* qdisc_sleeping; } ;
struct net_device {int priv_flags; scalar_t__ type; } ;
struct Qdisc_ops {int dummy; } ;
struct Qdisc {int flags; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_CAN ; 
 int IFF_NO_QUEUE ; 
 int TCQ_F_NOPARENT ; 
 int TCQ_F_ONETXQUEUE ; 
 int /*<<< orphan*/  TC_H_ROOT ; 
 struct Qdisc_ops* default_qdisc_ops ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct Qdisc_ops noqueue_qdisc_ops ; 
 struct Qdisc_ops pfifo_fast_ops ; 
 struct Qdisc* FUNC2 (struct netdev_queue*,struct Qdisc_ops const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
				     struct netdev_queue *dev_queue,
				     void *_unused)
{
	struct Qdisc *qdisc;
	const struct Qdisc_ops *ops = default_qdisc_ops;

	if (dev->priv_flags & IFF_NO_QUEUE)
		ops = &noqueue_qdisc_ops;
	else if(dev->type == ARPHRD_CAN)
		ops = &pfifo_fast_ops;

	qdisc = FUNC2(dev_queue, ops, TC_H_ROOT, NULL);
	if (!qdisc) {
		FUNC0(dev, "activation failed\n");
		return;
	}
	if (!FUNC1(dev))
		qdisc->flags |= TCQ_F_ONETXQUEUE | TCQ_F_NOPARENT;
	dev_queue->qdisc_sleeping = qdisc;
}