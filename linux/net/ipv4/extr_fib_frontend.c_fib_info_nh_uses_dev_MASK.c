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
struct net_device {scalar_t__ ifindex; } ;
struct fib_nh_common {struct net_device const* nhc_dev; } ;
struct fib_info {int dummy; } ;

/* Variables and functions */
 struct fib_nh_common* FUNC0 (struct fib_info*,int) ; 
 int FUNC1 (struct fib_info*) ; 
 scalar_t__ FUNC2 (struct net_device const*) ; 

bool FUNC3(struct fib_info *fi, const struct net_device *dev)
{
	bool dev_match = false;
#ifdef CONFIG_IP_ROUTE_MULTIPATH
	int ret;

	for (ret = 0; ret < fib_info_num_path(fi); ret++) {
		const struct fib_nh_common *nhc = fib_info_nhc(fi, ret);

		if (nhc->nhc_dev == dev) {
			dev_match = true;
			break;
		} else if (l3mdev_master_ifindex_rcu(nhc->nhc_dev) == dev->ifindex) {
			dev_match = true;
			break;
		}
	}
#else
	if (FUNC0(fi, 0)->nhc_dev == dev)
		dev_match = true;
#endif

	return dev_match;
}