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
struct net_device {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_PHONET ; 
#define  NETDEV_REGISTER 129 
#define  NETDEV_UNREGISTER 128 
 struct net_device* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct notifier_block *me, unsigned long what,
				void *ptr)
{
	struct net_device *dev = FUNC0(ptr);

	switch (what) {
	case NETDEV_REGISTER:
		if (dev->type == ARPHRD_PHONET)
			FUNC1(dev);
		break;
	case NETDEV_UNREGISTER:
		FUNC2(dev);
		FUNC3(dev);
		break;
	}
	return 0;

}