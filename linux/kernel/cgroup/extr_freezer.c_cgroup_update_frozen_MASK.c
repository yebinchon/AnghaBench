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
struct TYPE_2__ {scalar_t__ nr_frozen_tasks; } ;
struct cgroup {int /*<<< orphan*/  events_file; int /*<<< orphan*/  flags; TYPE_1__ freezer; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGRP_FREEZE ; 
 int /*<<< orphan*/  CGRP_FROZEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cgroup*,int) ; 
 scalar_t__ FUNC1 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cgroup*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  css_set_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  notify_frozen ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct cgroup *cgrp)
{
	bool frozen;

	FUNC5(&css_set_lock);

	/*
	 * If the cgroup has to be frozen (CGRP_FREEZE bit set),
	 * and all tasks are frozen and/or stopped, let's consider
	 * the cgroup frozen. Otherwise it's not frozen.
	 */
	frozen = FUNC7(CGRP_FREEZE, &cgrp->flags) &&
		cgrp->freezer.nr_frozen_tasks == FUNC1(cgrp);

	if (frozen) {
		/* Already there? */
		if (FUNC7(CGRP_FROZEN, &cgrp->flags))
			return;

		FUNC6(CGRP_FROZEN, &cgrp->flags);
	} else {
		/* Already there? */
		if (!FUNC7(CGRP_FROZEN, &cgrp->flags))
			return;

		FUNC4(CGRP_FROZEN, &cgrp->flags);
	}
	FUNC2(&cgrp->events_file);
	FUNC0(notify_frozen, cgrp, frozen);

	/* Update the state of ancestor cgroups. */
	FUNC3(cgrp, frozen);
}