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
struct notifier_block {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mtu; } ;
struct netdev_notifier_info_ext {TYPE_1__ ext; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int IFF_LOWER_UP ; 
 int IFF_RUNNING ; 
#define  NETDEV_CHANGE 131 
#define  NETDEV_CHANGEMTU 130 
#define  NETDEV_DOWN 129 
#define  NETDEV_UNREGISTER 128 
 int NOTIFY_DONE ; 
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct notifier_block *this,
			   unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC2(ptr);
	struct netdev_notifier_info_ext *info_ext;

	switch (event) {
	case NETDEV_DOWN:
	case NETDEV_UNREGISTER:
		FUNC3(dev);
		break;
	case NETDEV_CHANGE:
		if (!(FUNC0(dev) & (IFF_RUNNING | IFF_LOWER_UP)))
			FUNC3(dev);
		break;
	case NETDEV_CHANGEMTU:
		info_ext = ptr;
		FUNC4(dev, info_ext->ext.mtu);
		FUNC5(FUNC1(dev));
		break;
	}
	return NOTIFY_DONE;
}