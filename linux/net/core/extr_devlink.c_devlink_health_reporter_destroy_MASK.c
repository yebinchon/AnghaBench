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
struct devlink_health_reporter {scalar_t__ dump_fmsg; int /*<<< orphan*/  dump_lock; int /*<<< orphan*/  refcount; TYPE_1__* devlink; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  reporters_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink_health_reporter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(struct devlink_health_reporter *reporter)
{
	FUNC5(&reporter->devlink->reporters_lock);
	FUNC2(&reporter->list);
	FUNC6(&reporter->devlink->reporters_lock);
	while (FUNC7(&reporter->refcount) > 1)
		FUNC3(100);
	FUNC4(&reporter->dump_lock);
	if (reporter->dump_fmsg)
		FUNC0(reporter->dump_fmsg);
	FUNC1(reporter);
}