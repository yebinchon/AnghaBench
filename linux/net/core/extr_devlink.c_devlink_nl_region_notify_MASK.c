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
struct devlink_snapshot {int /*<<< orphan*/  id; } ;
struct devlink_region {int /*<<< orphan*/  size; int /*<<< orphan*/  name; struct devlink* devlink; } ;
struct devlink {int dummy; } ;
typedef  enum devlink_command { ____Placeholder_devlink_command } devlink_command ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_ATTR_PAD ; 
 int /*<<< orphan*/  DEVLINK_ATTR_REGION_NAME ; 
 int /*<<< orphan*/  DEVLINK_ATTR_REGION_SIZE ; 
 int /*<<< orphan*/  DEVLINK_ATTR_REGION_SNAPSHOT_ID ; 
 int DEVLINK_CMD_REGION_DEL ; 
 int DEVLINK_CMD_REGION_NEW ; 
 int /*<<< orphan*/  DEVLINK_MCGRP_CONFIG ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink*) ; 
 int /*<<< orphan*/  devlink_nl_family ; 
 int FUNC2 (struct sk_buff*,struct devlink*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 struct sk_buff* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct devlink_region *region,
				     struct devlink_snapshot *snapshot,
				     enum devlink_command cmd)
{
	struct devlink *devlink = region->devlink;
	struct sk_buff *msg;
	void *hdr;
	int err;

	FUNC0(cmd != DEVLINK_CMD_REGION_NEW && cmd != DEVLINK_CMD_REGION_DEL);

	msg = FUNC11(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return;

	hdr = FUNC6(msg, 0, 0, &devlink_nl_family, 0, cmd);
	if (!hdr)
		goto out_free_msg;

	err = FUNC2(msg, devlink);
	if (err)
		goto out_cancel_msg;

	err = FUNC7(msg, DEVLINK_ATTR_REGION_NAME,
			     region->name);
	if (err)
		goto out_cancel_msg;

	if (snapshot) {
		err = FUNC8(msg, DEVLINK_ATTR_REGION_SNAPSHOT_ID,
				  snapshot->id);
		if (err)
			goto out_cancel_msg;
	} else {
		err = FUNC9(msg, DEVLINK_ATTR_REGION_SIZE,
					region->size, DEVLINK_ATTR_PAD);
		if (err)
			goto out_cancel_msg;
	}
	FUNC4(msg, hdr);

	FUNC5(&devlink_nl_family, FUNC1(devlink),
				msg, 0, DEVLINK_MCGRP_CONFIG, GFP_KERNEL);

	return;

out_cancel_msg:
	FUNC3(msg, hdr);
out_free_msg:
	FUNC10(msg);
}