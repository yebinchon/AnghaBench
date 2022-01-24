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
struct nlattr {int dummy; } ;
struct devlink_health_reporter {int /*<<< orphan*/  refcount; } ;
struct devlink {int /*<<< orphan*/  reporters_lock; } ;

/* Variables and functions */
 size_t DEVLINK_ATTR_HEALTH_REPORTER_NAME ; 
 struct devlink_health_reporter* FUNC0 (struct devlink*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct devlink_health_reporter *
FUNC5(struct devlink *devlink,
				       struct nlattr **attrs)
{
	struct devlink_health_reporter *reporter;
	char *reporter_name;

	if (!attrs[DEVLINK_ATTR_HEALTH_REPORTER_NAME])
		return NULL;

	reporter_name = FUNC3(attrs[DEVLINK_ATTR_HEALTH_REPORTER_NAME]);
	FUNC1(&devlink->reporters_lock);
	reporter = FUNC0(devlink, reporter_name);
	if (reporter)
		FUNC4(&reporter->refcount);
	FUNC2(&devlink->reporters_lock);
	return reporter;
}