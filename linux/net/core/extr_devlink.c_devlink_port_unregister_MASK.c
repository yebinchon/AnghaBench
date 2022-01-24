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
struct devlink_port {int /*<<< orphan*/  list; struct devlink* devlink; } ;
struct devlink {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_CMD_PORT_DEL ; 
 int /*<<< orphan*/  FUNC0 (struct devlink_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct devlink_port *devlink_port)
{
	struct devlink *devlink = devlink_port->devlink;

	FUNC1(devlink_port);
	FUNC0(devlink_port, DEVLINK_CMD_PORT_DEL);
	FUNC3(&devlink->lock);
	FUNC2(&devlink_port->list);
	FUNC4(&devlink->lock);
}