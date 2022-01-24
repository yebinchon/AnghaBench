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
struct notifier_block {int dummy; } ;
struct netprio_map {int dummy; } ;
struct net_device {int /*<<< orphan*/  priomap; } ;

/* Variables and functions */
#define  NETDEV_UNREGISTER 128 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct netprio_map*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC2 (void*) ; 
 int /*<<< orphan*/  rcu ; 
 struct netprio_map* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct notifier_block *unused,
				unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC2(ptr);
	struct netprio_map *old;

	/*
	 * Note this is called with rtnl_lock held so we have update side
	 * protection on our rcu assignments
	 */

	switch (event) {
	case NETDEV_UNREGISTER:
		old = FUNC3(dev->priomap);
		FUNC0(dev->priomap, NULL);
		if (old)
			FUNC1(old, rcu);
		break;
	}
	return NOTIFY_DONE;
}