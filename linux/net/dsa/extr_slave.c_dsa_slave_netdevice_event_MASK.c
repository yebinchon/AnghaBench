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
struct net_device {int dummy; } ;

/* Variables and functions */
 unsigned long NETDEV_CHANGEUPPER ; 
 int NOTIFY_DONE ; 
 int FUNC0 (struct net_device*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,void*) ; 
 struct net_device* FUNC3 (void*) ; 

__attribute__((used)) static int FUNC4(struct notifier_block *nb,
				     unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC3(ptr);

	if (event == NETDEV_CHANGEUPPER) {
		if (!FUNC1(dev))
			return FUNC2(dev, ptr);

		return FUNC0(dev, ptr);
	}

	return NOTIFY_DONE;
}