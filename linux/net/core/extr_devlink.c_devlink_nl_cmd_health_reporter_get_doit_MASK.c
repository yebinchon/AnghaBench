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
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; struct devlink** user_ptr; } ;
struct devlink_health_reporter {int dummy; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_CMD_HEALTH_REPORTER_GET ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 struct devlink_health_reporter* FUNC0 (struct devlink*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink_health_reporter*) ; 
 int FUNC2 (struct sk_buff*,struct devlink*,struct devlink_health_reporter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb,
						   struct genl_info *info)
{
	struct devlink *devlink = info->user_ptr[0];
	struct devlink_health_reporter *reporter;
	struct sk_buff *msg;
	int err;

	reporter = FUNC0(devlink, info);
	if (!reporter)
		return -EINVAL;

	msg = FUNC5(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg) {
		err = -ENOMEM;
		goto out;
	}

	err = FUNC2(msg, devlink, reporter,
					      DEVLINK_CMD_HEALTH_REPORTER_GET,
					      info->snd_portid, info->snd_seq,
					      0);
	if (err) {
		FUNC4(msg);
		goto out;
	}

	err = FUNC3(msg, info);
out:
	FUNC1(reporter);
	return err;
}