#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct genl_info {struct devlink** user_ptr; } ;
struct devlink_health_reporter {TYPE_1__* ops; } ;
struct devlink_fmsg {int dummy; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {int (* diagnose ) (struct devlink_health_reporter*,struct devlink_fmsg*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_CMD_HEALTH_REPORTER_DIAGNOSE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 struct devlink_fmsg* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct devlink_fmsg*) ; 
 int FUNC2 (struct devlink_fmsg*) ; 
 int FUNC3 (struct devlink_fmsg*) ; 
 int FUNC4 (struct devlink_fmsg*,struct genl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct devlink_health_reporter* FUNC5 (struct devlink*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct devlink_health_reporter*) ; 
 int FUNC7 (struct devlink_health_reporter*,struct devlink_fmsg*) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb,
							struct genl_info *info)
{
	struct devlink *devlink = info->user_ptr[0];
	struct devlink_health_reporter *reporter;
	struct devlink_fmsg *fmsg;
	int err;

	reporter = FUNC5(devlink, info);
	if (!reporter)
		return -EINVAL;

	if (!reporter->ops->diagnose) {
		FUNC6(reporter);
		return -EOPNOTSUPP;
	}

	fmsg = FUNC0();
	if (!fmsg) {
		FUNC6(reporter);
		return -ENOMEM;
	}

	err = FUNC3(fmsg);
	if (err)
		goto out;

	err = reporter->ops->diagnose(reporter, fmsg);
	if (err)
		goto out;

	err = FUNC2(fmsg);
	if (err)
		goto out;

	err = FUNC4(fmsg, info,
			       DEVLINK_CMD_HEALTH_REPORTER_DIAGNOSE, 0);

out:
	FUNC1(fmsg);
	FUNC6(reporter);
	return err;
}