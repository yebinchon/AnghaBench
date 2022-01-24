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
struct genl_info {struct devlink** user_ptr; } ;
struct devlink_health_reporter {int dummy; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct devlink_health_reporter* FUNC0 (struct devlink*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink_health_reporter*) ; 
 int FUNC2 (struct devlink_health_reporter*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb,
						       struct genl_info *info)
{
	struct devlink *devlink = info->user_ptr[0];
	struct devlink_health_reporter *reporter;
	int err;

	reporter = FUNC0(devlink, info);
	if (!reporter)
		return -EINVAL;

	err = FUNC2(reporter, NULL);

	FUNC1(reporter);
	return err;
}