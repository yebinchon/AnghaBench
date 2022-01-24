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
struct TYPE_2__ {unsigned long queue; int /*<<< orphan*/  child_handle; } ;
struct tc_mq_qopt_offload {int /*<<< orphan*/  command; TYPE_1__ graft_params; int /*<<< orphan*/  handle; } ;
struct netlink_ext_ack {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int flags; } ;
struct Qdisc {int flags; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int IFF_UP ; 
 int TCQ_F_NOPARENT ; 
 int TCQ_F_ONETXQUEUE ; 
 int /*<<< orphan*/  TC_MQ_GRAFT ; 
 int /*<<< orphan*/  TC_SETUP_QDISC_MQ ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct Qdisc* FUNC2 (struct netdev_queue*,struct Qdisc*) ; 
 struct netdev_queue* FUNC3 (struct Qdisc*,unsigned long) ; 
 struct net_device* FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct Qdisc*,struct Qdisc*,struct Qdisc*,int /*<<< orphan*/ ,struct tc_mq_qopt_offload*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC6(struct Qdisc *sch, unsigned long cl, struct Qdisc *new,
		    struct Qdisc **old, struct netlink_ext_ack *extack)
{
	struct netdev_queue *dev_queue = FUNC3(sch, cl);
	struct tc_mq_qopt_offload graft_offload;
	struct net_device *dev = FUNC4(sch);

	if (dev->flags & IFF_UP)
		FUNC1(dev);

	*old = FUNC2(dev_queue, new);
	if (new)
		new->flags |= TCQ_F_ONETXQUEUE | TCQ_F_NOPARENT;
	if (dev->flags & IFF_UP)
		FUNC0(dev);

	graft_offload.handle = sch->handle;
	graft_offload.graft_params.queue = cl - 1;
	graft_offload.graft_params.child_handle = new ? new->handle : 0;
	graft_offload.command = TC_MQ_GRAFT;

	FUNC5(FUNC4(sch), sch, new, *old,
				   TC_SETUP_QDISC_MQ, &graft_offload, extack);
	return 0;
}