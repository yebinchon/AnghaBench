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
struct netdev_notifier_changeupper_info {int /*<<< orphan*/  linking; int /*<<< orphan*/  upper_dev; } ;
struct net_device {int dummy; } ;
struct net_bridge {int /*<<< orphan*/  default_pvid; } ;

/* Variables and functions */
 int BRIDGE_VLAN_INFO_BRENTRY ; 
 int BRIDGE_VLAN_INFO_PVID ; 
 int BRIDGE_VLAN_INFO_UNTAGGED ; 
 int /*<<< orphan*/  BROPT_VLAN_BRIDGE_BINDING ; 
#define  NETDEV_CHANGE 132 
#define  NETDEV_CHANGEUPPER 131 
#define  NETDEV_REGISTER 130 
#define  NETDEV_UNREGISTER 129 
#define  NETDEV_UP 128 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_bridge*,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_bridge*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct net_bridge*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_bridge* FUNC5 (struct net_device*) ; 

int FUNC6(struct net_device *dev, unsigned long event, void *ptr)
{
	struct netdev_notifier_changeupper_info *info;
	struct net_bridge *br = FUNC5(dev);
	bool changed;
	int ret = 0;

	switch (event) {
	case NETDEV_REGISTER:
		ret = FUNC1(br, br->default_pvid,
				  BRIDGE_VLAN_INFO_PVID |
				  BRIDGE_VLAN_INFO_UNTAGGED |
				  BRIDGE_VLAN_INFO_BRENTRY, &changed, NULL);
		break;
	case NETDEV_UNREGISTER:
		FUNC2(br, br->default_pvid);
		break;
	case NETDEV_CHANGEUPPER:
		info = ptr;
		FUNC4(dev, info->upper_dev, info->linking);
		break;

	case NETDEV_CHANGE:
	case NETDEV_UP:
		if (!FUNC0(br, BROPT_VLAN_BRIDGE_BINDING))
			break;
		FUNC3(dev, br);
		break;
	}

	return ret;
}