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
struct tc_etf_qopt_offload {int enable; int /*<<< orphan*/  queue; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device_ops {int (* ndo_setup_tc ) (struct net_device*,int /*<<< orphan*/ ,struct tc_etf_qopt_offload*) ;} ;
struct net_device {struct net_device_ops* netdev_ops; } ;
struct etf_sched_data {int /*<<< orphan*/  queue; scalar_t__ offload; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  TC_SETUP_QDISC_ETF ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ,struct tc_etf_qopt_offload*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, struct etf_sched_data *q,
			      struct netlink_ext_ack *extack)
{
	const struct net_device_ops *ops = dev->netdev_ops;
	struct tc_etf_qopt_offload etf = { };
	int err;

	if (q->offload)
		return 0;

	if (!ops->ndo_setup_tc) {
		FUNC0(extack, "Specified device does not support ETF offload");
		return -EOPNOTSUPP;
	}

	etf.queue = q->queue;
	etf.enable = 1;

	err = ops->ndo_setup_tc(dev, TC_SETUP_QDISC_ETF, &etf);
	if (err < 0) {
		FUNC0(extack, "Specified device failed to setup ETF hardware offload");
		return err;
	}

	return 0;
}