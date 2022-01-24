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
struct devlink_trap_item {int dummy; } ;
struct devlink {int dummy; } ;
typedef  enum devlink_command { ____Placeholder_devlink_command } devlink_command ;

/* Variables and functions */
 int DEVLINK_CMD_TRAP_DEL ; 
 int DEVLINK_CMD_TRAP_NEW ; 
 int /*<<< orphan*/  DEVLINK_MCGRP_CONFIG ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink*) ; 
 int /*<<< orphan*/  devlink_nl_family ; 
 int FUNC2 (struct sk_buff*,struct devlink*,struct devlink_trap_item const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct devlink *devlink,
				const struct devlink_trap_item *trap_item,
				enum devlink_command cmd)
{
	struct sk_buff *msg;
	int err;

	FUNC0(cmd != DEVLINK_CMD_TRAP_NEW &&
		     cmd != DEVLINK_CMD_TRAP_DEL);

	msg = FUNC5(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return;

	err = FUNC2(msg, devlink, trap_item, cmd, 0, 0, 0);
	if (err) {
		FUNC4(msg);
		return;
	}

	FUNC3(&devlink_nl_family, FUNC1(devlink),
				msg, 0, DEVLINK_MCGRP_CONFIG, GFP_KERNEL);
}