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
typedef  scalar_t__ u64 ;
struct sk_buff {int dummy; } ;
struct netlink_callback {scalar_t__* args; int /*<<< orphan*/  extack; } ;
struct devlink_health_reporter {scalar_t__ dump_ts; int /*<<< orphan*/  dump_lock; int /*<<< orphan*/  dump_fmsg; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  dump; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_CMD_HEALTH_REPORTER_DUMP_GET ; 
 int EAGAIN ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,struct netlink_callback*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct devlink_health_reporter*,int /*<<< orphan*/ *) ; 
 struct devlink_health_reporter* FUNC3 (struct netlink_callback*) ; 
 int /*<<< orphan*/  FUNC4 (struct devlink_health_reporter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct sk_buff *skb,
					       struct netlink_callback *cb)
{
	struct devlink_health_reporter *reporter;
	u64 start = cb->args[0];
	int err;

	reporter = FUNC3(cb);
	if (!reporter)
		return -EINVAL;

	if (!reporter->ops->dump) {
		err = -EOPNOTSUPP;
		goto out;
	}
	FUNC5(&reporter->dump_lock);
	if (!start) {
		err = FUNC2(reporter, NULL);
		if (err)
			goto unlock;
		cb->args[1] = reporter->dump_ts;
	}
	if (!reporter->dump_fmsg || cb->args[1] != reporter->dump_ts) {
		FUNC0(cb->extack, "Dump trampled, please retry");
		err = -EAGAIN;
		goto unlock;
	}

	err = FUNC1(reporter->dump_fmsg, skb, cb,
				  DEVLINK_CMD_HEALTH_REPORTER_DUMP_GET);
unlock:
	FUNC6(&reporter->dump_lock);
out:
	FUNC4(reporter);
	return err;
}