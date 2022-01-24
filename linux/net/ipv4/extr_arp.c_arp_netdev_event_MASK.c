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
struct netdev_notifier_change_info {int flags_changed; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int IFF_NOARP ; 
#define  NETDEV_CHANGE 129 
#define  NETDEV_CHANGEADDR 128 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  arp_tbl ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct net_device*) ; 
 struct net_device* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct notifier_block *this, unsigned long event,
			    void *ptr)
{
	struct net_device *dev = FUNC3(ptr);
	struct netdev_notifier_change_info *change_info;

	switch (event) {
	case NETDEV_CHANGEADDR:
		FUNC2(&arp_tbl, dev);
		FUNC5(FUNC0(dev));
		break;
	case NETDEV_CHANGE:
		change_info = ptr;
		if (change_info->flags_changed & IFF_NOARP)
			FUNC2(&arp_tbl, dev);
		if (!FUNC4(dev))
			FUNC1(&arp_tbl, dev);
		break;
	default:
		break;
	}

	return NOTIFY_DONE;
}