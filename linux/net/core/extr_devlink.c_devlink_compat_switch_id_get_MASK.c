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
struct netdev_phys_item_id {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  switch_id; int /*<<< orphan*/  switch_port; } ;
struct devlink_port {TYPE_1__ attrs; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct netdev_phys_item_id*,int /*<<< orphan*/ *,int) ; 
 struct devlink_port* FUNC1 (struct net_device*) ; 

int FUNC2(struct net_device *dev,
				 struct netdev_phys_item_id *ppid)
{
	struct devlink_port *devlink_port;

	/* Caller must hold RTNL mutex or reference to dev, which ensures that
	 * devlink_port instance cannot disappear in the middle. No need to take
	 * any devlink lock as only permanent values are accessed.
	 */
	devlink_port = FUNC1(dev);
	if (!devlink_port || !devlink_port->attrs.switch_port)
		return -EOPNOTSUPP;

	FUNC0(ppid, &devlink_port->attrs.switch_id, sizeof(*ppid));

	return 0;
}