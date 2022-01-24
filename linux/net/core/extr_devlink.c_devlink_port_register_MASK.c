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
struct devlink_port {unsigned int index; int registered; int /*<<< orphan*/  type_warn_dw; int /*<<< orphan*/  param_list; int /*<<< orphan*/  list; int /*<<< orphan*/  type_lock; struct devlink* devlink; } ;
struct devlink {int /*<<< orphan*/  lock; int /*<<< orphan*/  port_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_CMD_PORT_NEW ; 
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct devlink*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct devlink_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devlink_port_type_warn ; 
 int /*<<< orphan*/  FUNC4 (struct devlink_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct devlink *devlink,
			  struct devlink_port *devlink_port,
			  unsigned int port_index)
{
	FUNC6(&devlink->lock);
	if (FUNC2(devlink, port_index)) {
		FUNC7(&devlink->lock);
		return -EEXIST;
	}
	devlink_port->devlink = devlink;
	devlink_port->index = port_index;
	devlink_port->registered = true;
	FUNC8(&devlink_port->type_lock);
	FUNC5(&devlink_port->list, &devlink->port_list);
	FUNC1(&devlink_port->param_list);
	FUNC7(&devlink->lock);
	FUNC0(&devlink_port->type_warn_dw, &devlink_port_type_warn);
	FUNC4(devlink_port);
	FUNC3(devlink_port, DEVLINK_CMD_PORT_NEW);
	return 0;
}