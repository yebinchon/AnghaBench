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
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; struct devlink_port** user_ptr; } ;
struct devlink_port {int /*<<< orphan*/  index; int /*<<< orphan*/  devlink; int /*<<< orphan*/  param_list; } ;
struct devlink_param_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_CMD_PORT_PARAM_GET ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct devlink_param_item*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct devlink_param_item* FUNC1 (int /*<<< orphan*/ *,struct genl_info*) ; 
 int FUNC2 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb,
					      struct genl_info *info)
{
	struct devlink_port *devlink_port = info->user_ptr[0];
	struct devlink_param_item *param_item;
	struct sk_buff *msg;
	int err;

	param_item = FUNC1(&devlink_port->param_list,
						 info);
	if (!param_item)
		return -EINVAL;

	msg = FUNC4(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	err = FUNC0(msg, devlink_port->devlink,
				    devlink_port->index, param_item,
				    DEVLINK_CMD_PORT_PARAM_GET,
				    info->snd_portid, info->snd_seq, 0);
	if (err) {
		FUNC3(msg);
		return err;
	}

	return FUNC2(msg, info);
}