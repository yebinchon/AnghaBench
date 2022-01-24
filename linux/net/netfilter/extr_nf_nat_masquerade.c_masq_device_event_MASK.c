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
struct net_device {scalar_t__ ifindex; } ;
struct net {int dummy; } ;

/* Variables and functions */
 unsigned long NETDEV_DOWN ; 
 int NOTIFY_DONE ; 
 struct net* FUNC0 (struct net_device const*) ; 
 int /*<<< orphan*/  device_cmp ; 
 struct net_device* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct notifier_block *this,
			     unsigned long event,
			     void *ptr)
{
	const struct net_device *dev = FUNC1(ptr);
	struct net *net = FUNC0(dev);

	if (event == NETDEV_DOWN) {
		/* Device was downed.  Search entire table for
		 * conntracks which were associated with that device,
		 * and forget them.
		 */

		FUNC2(net, device_cmp,
					  (void *)(long)dev->ifindex, 0, 0);
	}

	return NOTIFY_DONE;
}