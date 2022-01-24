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
struct devlink_health_reporter {int /*<<< orphan*/  dump_ts; scalar_t__ dump_fmsg; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* dump ) (struct devlink_health_reporter*,scalar_t__,void*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct devlink_health_reporter*) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC4 (struct devlink_health_reporter*,scalar_t__,void*) ; 

__attribute__((used)) static int FUNC5(struct devlink_health_reporter *reporter,
				  void *priv_ctx)
{
	int err;

	if (!reporter->ops->dump)
		return 0;

	if (reporter->dump_fmsg)
		return 0;

	reporter->dump_fmsg = FUNC0();
	if (!reporter->dump_fmsg) {
		err = -ENOMEM;
		return err;
	}

	err = FUNC2(reporter->dump_fmsg);
	if (err)
		goto dump_err;

	err = reporter->ops->dump(reporter, reporter->dump_fmsg,
				  priv_ctx);
	if (err)
		goto dump_err;

	err = FUNC1(reporter->dump_fmsg);
	if (err)
		goto dump_err;

	reporter->dump_ts = jiffies;

	return 0;

dump_err:
	FUNC3(reporter);
	return err;
}