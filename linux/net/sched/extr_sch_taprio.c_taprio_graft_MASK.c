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
struct taprio_sched {struct Qdisc** qdiscs; } ;
struct netlink_ext_ack {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int flags; } ;
struct Qdisc {int flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int IFF_UP ; 
 int TCQ_F_NOPARENT ; 
 int TCQ_F_ONETXQUEUE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (struct Qdisc*) ; 
 struct taprio_sched* FUNC3 (struct Qdisc*) ; 
 struct netdev_queue* FUNC4 (struct Qdisc*,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct Qdisc *sch, unsigned long cl,
			struct Qdisc *new, struct Qdisc **old,
			struct netlink_ext_ack *extack)
{
	struct taprio_sched *q = FUNC3(sch);
	struct net_device *dev = FUNC2(sch);
	struct netdev_queue *dev_queue = FUNC4(sch, cl);

	if (!dev_queue)
		return -EINVAL;

	if (dev->flags & IFF_UP)
		FUNC1(dev);

	*old = q->qdiscs[cl - 1];
	q->qdiscs[cl - 1] = new;

	if (new)
		new->flags |= TCQ_F_ONETXQUEUE | TCQ_F_NOPARENT;

	if (dev->flags & IFF_UP)
		FUNC0(dev);

	return 0;
}