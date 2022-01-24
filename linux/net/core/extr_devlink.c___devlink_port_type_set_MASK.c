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
struct devlink_port {int type; int /*<<< orphan*/  type_lock; void* type_dev; int /*<<< orphan*/  registered; } ;
typedef  enum devlink_port_type { ____Placeholder_devlink_port_type } devlink_port_type ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_CMD_PORT_NEW ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct devlink_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct devlink_port *devlink_port,
				    enum devlink_port_type type,
				    void *type_dev)
{
	if (FUNC0(!devlink_port->registered))
		return;
	FUNC2(devlink_port);
	FUNC3(&devlink_port->type_lock);
	devlink_port->type = type;
	devlink_port->type_dev = type_dev;
	FUNC4(&devlink_port->type_lock);
	FUNC1(devlink_port, DEVLINK_CMD_PORT_NEW);
}