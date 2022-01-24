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
typedef  int /*<<< orphan*/  u32 ;
struct nlattr {int dummy; } ;
struct devlink_port {int dummy; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 size_t DEVLINK_ATTR_PORT_INDEX ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 struct devlink_port* FUNC0 (int /*<<< orphan*/ ) ; 
 struct devlink_port* FUNC1 (struct devlink*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 

__attribute__((used)) static struct devlink_port *FUNC3(struct devlink *devlink,
							struct nlattr **attrs)
{
	if (attrs[DEVLINK_ATTR_PORT_INDEX]) {
		u32 port_index = FUNC2(attrs[DEVLINK_ATTR_PORT_INDEX]);
		struct devlink_port *devlink_port;

		devlink_port = FUNC1(devlink, port_index);
		if (!devlink_port)
			return FUNC0(-ENODEV);
		return devlink_port;
	}
	return FUNC0(-EINVAL);
}