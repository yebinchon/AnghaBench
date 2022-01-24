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
struct genl_info {struct devlink** user_ptr; struct netlink_ext_ack* extack; } ;
struct devlink_trap_item {int dummy; } ;
struct devlink {int /*<<< orphan*/  trap_list; } ;

/* Variables and functions */
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int FUNC1 (struct devlink*,struct devlink_trap_item*,struct genl_info*) ; 
 struct devlink_trap_item* FUNC2 (struct devlink*,struct genl_info*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb,
					struct genl_info *info)
{
	struct netlink_ext_ack *extack = info->extack;
	struct devlink *devlink = info->user_ptr[0];
	struct devlink_trap_item *trap_item;
	int err;

	if (FUNC3(&devlink->trap_list))
		return -EOPNOTSUPP;

	trap_item = FUNC2(devlink, info);
	if (!trap_item) {
		FUNC0(extack, "Device did not register this trap");
		return -ENOENT;
	}

	err = FUNC1(devlink, trap_item, info);
	if (err)
		return err;

	return 0;
}