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
struct net_device {int ifindex; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device const*) ; 
 scalar_t__ FUNC2 (struct net_device const*) ; 

int FUNC3(const struct net_device *dev)
{
	int ifindex = 0;

	if (!dev)
		return 0;

	if (FUNC1(dev)) {
		ifindex = dev->ifindex;
	} else if (FUNC2(dev)) {
		struct net_device *master;
		struct net_device *_dev = (struct net_device *)dev;

		/* netdev_master_upper_dev_get_rcu calls
		 * list_first_or_null_rcu to walk the upper dev list.
		 * list_first_or_null_rcu does not handle a const arg. We aren't
		 * making changes, just want the master device from that list so
		 * typecast to remove the const
		 */
		master = FUNC0(_dev);
		if (master)
			ifindex = master->ifindex;
	}

	return ifindex;
}