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
struct devlink_health_reporter {int /*<<< orphan*/  dump_lock; TYPE_1__* ops; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dump; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct devlink_health_reporter*) ; 
 struct devlink_health_reporter* FUNC1 (struct devlink*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct devlink_health_reporter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct sk_buff *skb,
					       struct genl_info *info)
{
	struct devlink *devlink = info->user_ptr[0];
	struct devlink_health_reporter *reporter;

	reporter = FUNC1(devlink, info);
	if (!reporter)
		return -EINVAL;

	if (!reporter->ops->dump) {
		FUNC2(reporter);
		return -EOPNOTSUPP;
	}

	FUNC3(&reporter->dump_lock);
	FUNC0(reporter);
	FUNC4(&reporter->dump_lock);
	FUNC2(reporter);
	return 0;
}