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
typedef  scalar_t__ u64 ;
struct devlink_health_reporter_ops {int /*<<< orphan*/  recover; int /*<<< orphan*/  name; } ;
struct devlink_health_reporter {int auto_recover; int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; int /*<<< orphan*/  dump_lock; scalar_t__ graceful_period; struct devlink* devlink; struct devlink_health_reporter_ops const* ops; void* priv; } ;
struct devlink {int /*<<< orphan*/  reporters_lock; int /*<<< orphan*/  reporter_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct devlink_health_reporter* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct devlink*,int /*<<< orphan*/ ) ; 
 struct devlink_health_reporter* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

struct devlink_health_reporter *
FUNC9(struct devlink *devlink,
			       const struct devlink_health_reporter_ops *ops,
			       u64 graceful_period, bool auto_recover,
			       void *priv)
{
	struct devlink_health_reporter *reporter;

	FUNC6(&devlink->reporters_lock);
	if (FUNC2(devlink, ops->name)) {
		reporter = FUNC0(-EEXIST);
		goto unlock;
	}

	if (FUNC1(auto_recover && !ops->recover) ||
	    FUNC1(graceful_period && !ops->recover)) {
		reporter = FUNC0(-EINVAL);
		goto unlock;
	}

	reporter = FUNC3(sizeof(*reporter), GFP_KERNEL);
	if (!reporter) {
		reporter = FUNC0(-ENOMEM);
		goto unlock;
	}

	reporter->priv = priv;
	reporter->ops = ops;
	reporter->devlink = devlink;
	reporter->graceful_period = graceful_period;
	reporter->auto_recover = auto_recover;
	FUNC5(&reporter->dump_lock);
	FUNC8(&reporter->refcount, 1);
	FUNC4(&reporter->list, &devlink->reporter_list);
unlock:
	FUNC7(&devlink->reporters_lock);
	return reporter;
}