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
struct tc_taprio_qopt_offload {scalar_t__ enable; } ;
struct taprio_sched {int /*<<< orphan*/  flags; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device_ops {int (* ndo_setup_tc ) (struct net_device*,int /*<<< orphan*/ ,struct tc_taprio_qopt_offload*) ;} ;
struct net_device {struct net_device_ops* netdev_ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  TC_SETUP_QDISC_TAPRIO ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ,struct tc_taprio_qopt_offload*) ; 
 struct tc_taprio_qopt_offload* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tc_taprio_qopt_offload*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				  struct taprio_sched *q,
				  struct netlink_ext_ack *extack)
{
	const struct net_device_ops *ops = dev->netdev_ops;
	struct tc_taprio_qopt_offload *offload;
	int err;

	if (!FUNC0(q->flags))
		return 0;

	if (!ops->ndo_setup_tc)
		return -EOPNOTSUPP;

	offload = FUNC3(0);
	if (!offload) {
		FUNC1(extack,
			       "Not enough memory to disable offload mode");
		return -ENOMEM;
	}
	offload->enable = 0;

	err = ops->ndo_setup_tc(dev, TC_SETUP_QDISC_TAPRIO, offload);
	if (err < 0) {
		FUNC1(extack,
			       "Device failed to disable offload");
		goto out;
	}

out:
	FUNC4(offload);

	return err;
}