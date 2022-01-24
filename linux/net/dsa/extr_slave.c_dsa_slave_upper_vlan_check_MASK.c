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
struct netlink_ext_ack {int dummy; } ;
struct netdev_notifier_changeupper_info {scalar_t__ linking; int /*<<< orphan*/  upper_dev; int /*<<< orphan*/  info; } ;
struct net_device {int dummy; } ;
struct dsa_port {int /*<<< orphan*/  bridge_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int NOTIFY_DONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct dsa_port* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct netlink_ext_ack* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev,
				      struct netdev_notifier_changeupper_info *
				      info)
{
	struct netlink_ext_ack *ext_ack;
	struct net_device *slave;
	struct dsa_port *dp;

	ext_ack = FUNC5(&info->info);

	if (!FUNC4(dev))
		return NOTIFY_DONE;

	slave = FUNC8(dev);
	if (!FUNC2(slave))
		return NOTIFY_DONE;

	dp = FUNC3(slave);
	if (!dp->bridge_dev)
		return NOTIFY_DONE;

	/* Deny enslaving a VLAN device into a VLAN-aware bridge */
	if (FUNC1(dp->bridge_dev) &&
	    FUNC6(info->upper_dev) && info->linking) {
		FUNC0(ext_ack,
				   "Cannot enslave VLAN device into VLAN aware bridge");
		return FUNC7(-EINVAL);
	}

	return NOTIFY_DONE;
}