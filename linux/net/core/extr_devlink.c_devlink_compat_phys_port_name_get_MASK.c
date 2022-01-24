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
struct net_device {int dummy; } ;
struct devlink_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EOPNOTSUPP ; 
 int FUNC1 (struct devlink_port*,char*,size_t) ; 
 struct devlink_port* FUNC2 (struct net_device*) ; 

int FUNC3(struct net_device *dev,
				      char *name, size_t len)
{
	struct devlink_port *devlink_port;

	/* RTNL mutex is held here which ensures that devlink_port
	 * instance cannot disappear in the middle. No need to take
	 * any devlink lock as only permanent values are accessed.
	 */
	FUNC0();

	devlink_port = FUNC2(dev);
	if (!devlink_port)
		return -EOPNOTSUPP;

	return FUNC1(devlink_port, name, len);
}