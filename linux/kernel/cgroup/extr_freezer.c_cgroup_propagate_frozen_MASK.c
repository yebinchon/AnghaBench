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
struct TYPE_2__ {scalar_t__ nr_frozen_descendants; } ;
struct cgroup {scalar_t__ nr_descendants; int /*<<< orphan*/  events_file; int /*<<< orphan*/  flags; TYPE_1__ freezer; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGRP_FREEZE ; 
 int /*<<< orphan*/  CGRP_FROZEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cgroup*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct cgroup* FUNC2 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  notify_frozen ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct cgroup *cgrp, bool frozen)
{
	int desc = 1;

	/*
	 * If the new state is frozen, some freezing ancestor cgroups may change
	 * their state too, depending on if all their descendants are frozen.
	 *
	 * Otherwise, all ancestor cgroups are forced into the non-frozen state.
	 */
	while ((cgrp = FUNC2(cgrp))) {
		if (frozen) {
			cgrp->freezer.nr_frozen_descendants += desc;
			if (!FUNC5(CGRP_FROZEN, &cgrp->flags) &&
			    FUNC5(CGRP_FREEZE, &cgrp->flags) &&
			    cgrp->freezer.nr_frozen_descendants ==
			    cgrp->nr_descendants) {
				FUNC4(CGRP_FROZEN, &cgrp->flags);
				FUNC1(&cgrp->events_file);
				FUNC0(notify_frozen, cgrp, 1);
				desc++;
			}
		} else {
			cgrp->freezer.nr_frozen_descendants -= desc;
			if (FUNC5(CGRP_FROZEN, &cgrp->flags)) {
				FUNC3(CGRP_FROZEN, &cgrp->flags);
				FUNC1(&cgrp->events_file);
				FUNC0(notify_frozen, cgrp, 0);
				desc++;
			}
		}
	}
}