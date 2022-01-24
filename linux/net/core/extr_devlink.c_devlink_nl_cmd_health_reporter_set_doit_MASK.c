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
struct genl_info {scalar_t__* attrs; struct devlink** user_ptr; } ;
struct devlink_health_reporter {int /*<<< orphan*/  auto_recover; int /*<<< orphan*/  graceful_period; TYPE_1__* ops; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  recover; } ;

/* Variables and functions */
 size_t DEVLINK_ATTR_HEALTH_REPORTER_AUTO_RECOVER ; 
 size_t DEVLINK_ATTR_HEALTH_REPORTER_GRACEFUL_PERIOD ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 struct devlink_health_reporter* FUNC0 (struct devlink*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink_health_reporter*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int
FUNC4(struct sk_buff *skb,
					struct genl_info *info)
{
	struct devlink *devlink = info->user_ptr[0];
	struct devlink_health_reporter *reporter;
	int err;

	reporter = FUNC0(devlink, info);
	if (!reporter)
		return -EINVAL;

	if (!reporter->ops->recover &&
	    (info->attrs[DEVLINK_ATTR_HEALTH_REPORTER_GRACEFUL_PERIOD] ||
	     info->attrs[DEVLINK_ATTR_HEALTH_REPORTER_AUTO_RECOVER])) {
		err = -EOPNOTSUPP;
		goto out;
	}

	if (info->attrs[DEVLINK_ATTR_HEALTH_REPORTER_GRACEFUL_PERIOD])
		reporter->graceful_period =
			FUNC2(info->attrs[DEVLINK_ATTR_HEALTH_REPORTER_GRACEFUL_PERIOD]);

	if (info->attrs[DEVLINK_ATTR_HEALTH_REPORTER_AUTO_RECOVER])
		reporter->auto_recover =
			FUNC3(info->attrs[DEVLINK_ATTR_HEALTH_REPORTER_AUTO_RECOVER]);

	FUNC1(reporter);
	return 0;
out:
	FUNC1(reporter);
	return err;
}