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
typedef  union devlink_param_value {int dummy; } devlink_param_value ;
typedef  int /*<<< orphan*/  u32 ;
struct devlink_port {int /*<<< orphan*/  param_list; int /*<<< orphan*/  index; int /*<<< orphan*/  devlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_CMD_PORT_PARAM_NEW ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,union devlink_param_value,int /*<<< orphan*/ ) ; 

int FUNC1(struct devlink_port *devlink_port,
					    u32 param_id,
					    union devlink_param_value init_val)
{
	return FUNC0(devlink_port->devlink,
						    devlink_port->index,
						    &devlink_port->param_list,
						    param_id, init_val,
						    DEVLINK_CMD_PORT_PARAM_NEW);
}