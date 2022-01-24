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
struct netlink_ext_ack {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; struct devlink** user_ptr; struct netlink_ext_ack* extack; } ;
struct devlink_trap_group_item {int dummy; } ;
struct devlink {int /*<<< orphan*/  trap_group_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_CMD_TRAP_GROUP_NEW ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int FUNC1 (struct sk_buff*,struct devlink*,struct devlink_trap_group_item*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct devlink_trap_group_item* FUNC2 (struct devlink*,struct genl_info*) ; 
 int FUNC3 (struct sk_buff*,struct genl_info*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb,
					      struct genl_info *info)
{
	struct netlink_ext_ack *extack = info->extack;
	struct devlink *devlink = info->user_ptr[0];
	struct devlink_trap_group_item *group_item;
	struct sk_buff *msg;
	int err;

	if (FUNC4(&devlink->trap_group_list))
		return -EOPNOTSUPP;

	group_item = FUNC2(devlink, info);
	if (!group_item) {
		FUNC0(extack, "Device did not register this trap group");
		return -ENOENT;
	}

	msg = FUNC6(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	err = FUNC1(msg, devlink, group_item,
					 DEVLINK_CMD_TRAP_GROUP_NEW,
					 info->snd_portid, info->snd_seq, 0);
	if (err)
		goto err_trap_group_fill;

	return FUNC3(msg, info);

err_trap_group_fill:
	FUNC5(msg);
	return err;
}