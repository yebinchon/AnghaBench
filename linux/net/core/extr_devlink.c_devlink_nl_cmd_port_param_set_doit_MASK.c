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
struct sk_buff {int dummy; } ;
struct genl_info {struct devlink_port** user_ptr; } ;
struct devlink_port {int /*<<< orphan*/  param_list; int /*<<< orphan*/  index; int /*<<< orphan*/  devlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_CMD_PORT_PARAM_NEW ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct genl_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct sk_buff *skb,
					      struct genl_info *info)
{
	struct devlink_port *devlink_port = info->user_ptr[0];

	return FUNC0(devlink_port->devlink,
					       devlink_port->index,
					       &devlink_port->param_list, info,
					       DEVLINK_CMD_PORT_PARAM_NEW);
}