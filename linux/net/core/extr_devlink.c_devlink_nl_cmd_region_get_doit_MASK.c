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
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; int /*<<< orphan*/ * attrs; struct devlink** user_ptr; } ;
struct devlink_region {int dummy; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 size_t DEVLINK_ATTR_REGION_NAME ; 
 int /*<<< orphan*/  DEVLINK_CMD_REGION_GET ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int FUNC0 (struct sk_buff*,struct devlink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct devlink_region*) ; 
 struct devlink_region* FUNC1 (struct devlink*,char const*) ; 
 int FUNC2 (struct sk_buff*,struct genl_info*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb,
					  struct genl_info *info)
{
	struct devlink *devlink = info->user_ptr[0];
	struct devlink_region *region;
	const char *region_name;
	struct sk_buff *msg;
	int err;

	if (!info->attrs[DEVLINK_ATTR_REGION_NAME])
		return -EINVAL;

	region_name = FUNC3(info->attrs[DEVLINK_ATTR_REGION_NAME]);
	region = FUNC1(devlink, region_name);
	if (!region)
		return -EINVAL;

	msg = FUNC5(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	err = FUNC0(msg, devlink, DEVLINK_CMD_REGION_GET,
				     info->snd_portid, info->snd_seq, 0,
				     region);
	if (err) {
		FUNC4(msg);
		return err;
	}

	return FUNC2(msg, info);
}