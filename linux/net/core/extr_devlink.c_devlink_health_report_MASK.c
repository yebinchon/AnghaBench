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
struct devlink_health_reporter {int health_state; scalar_t__ last_recovery_ts; scalar_t__ auto_recover; int /*<<< orphan*/  dump_lock; TYPE_1__* ops; int /*<<< orphan*/  graceful_period; int /*<<< orphan*/  error_count; struct devlink* devlink; } ;
struct devlink {int dummy; } ;
typedef  enum devlink_health_reporter_state { ____Placeholder_devlink_health_reporter_state } devlink_health_reporter_state ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 void* DEVLINK_HEALTH_REPORTER_STATE_ERROR ; 
 int DEVLINK_HEALTH_REPORTER_STATE_HEALTHY ; 
 int ECANCELED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink_health_reporter*,void*) ; 
 int FUNC2 (struct devlink_health_reporter*,void*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct devlink*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct devlink*,int /*<<< orphan*/ ,char const*) ; 

int FUNC8(struct devlink_health_reporter *reporter,
			  const char *msg, void *priv_ctx)
{
	enum devlink_health_reporter_state prev_health_state;
	struct devlink *devlink = reporter->devlink;

	/* write a log message of the current error */
	FUNC0(!msg);
	FUNC7(devlink, reporter->ops->name, msg);
	reporter->error_count++;
	prev_health_state = reporter->health_state;
	reporter->health_state = DEVLINK_HEALTH_REPORTER_STATE_ERROR;

	/* abort if the previous error wasn't recovered */
	if (reporter->auto_recover &&
	    (prev_health_state != DEVLINK_HEALTH_REPORTER_STATE_HEALTHY ||
	     jiffies - reporter->last_recovery_ts <
	     FUNC3(reporter->graceful_period))) {
		FUNC6(devlink,
						     reporter->ops->name,
						     reporter->health_state,
						     jiffies -
						     reporter->last_recovery_ts);
		return -ECANCELED;
	}

	reporter->health_state = DEVLINK_HEALTH_REPORTER_STATE_ERROR;

	FUNC4(&reporter->dump_lock);
	/* store current dump of current error, for later analysis */
	FUNC1(reporter, priv_ctx);
	FUNC5(&reporter->dump_lock);

	if (reporter->auto_recover)
		return FUNC2(reporter, priv_ctx);

	return 0;
}