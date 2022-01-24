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
 struct Qdisc* FUNC2 (struct netdev_queue*,struct Qdisc*) ; 
 struct netdev_queue* FUNC3 (struct Qdisc*,unsigned long) ; 
 struct net_device* FUNC4 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC5(struct Qdisc *sch, unsigned long cl, struct Qdisc *new,
			struct Qdisc **old, struct netlink_ext_ack *extack)
{
	struct net_device *dev = FUNC4(sch);
	struct netdev_queue *dev_queue = FUNC3(sch, cl);

	if (!dev_queue)
		return -EINVAL;

	if (dev->flags & IFF_UP)
		FUNC1(dev);

	*old = FUNC2(dev_queue, new);

	if (new)
		new->flags |= TCQ_F_ONETXQUEUE | TCQ_F_NOPARENT;

	if (dev->flags & IFF_UP)
		FUNC0(dev);

	return 0;
}