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
struct cgroup {int nr_populated_csets; int nr_populated_threaded_children; int nr_populated_domain_children; int /*<<< orphan*/  events_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cgroup*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct cgroup*) ; 
 scalar_t__ FUNC4 (struct cgroup*) ; 
 struct cgroup* FUNC5 (struct cgroup*) ; 
 int /*<<< orphan*/  css_set_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  notify_populated ; 

__attribute__((used)) static void FUNC7(struct cgroup *cgrp, bool populated)
{
	struct cgroup *child = NULL;
	int adj = populated ? 1 : -1;

	FUNC6(&css_set_lock);

	do {
		bool was_populated = FUNC3(cgrp);

		if (!child) {
			cgrp->nr_populated_csets += adj;
		} else {
			if (FUNC4(child))
				cgrp->nr_populated_threaded_children += adj;
			else
				cgrp->nr_populated_domain_children += adj;
		}

		if (was_populated == FUNC3(cgrp))
			break;

		FUNC1(cgrp);
		FUNC0(notify_populated, cgrp,
				  FUNC3(cgrp));
		FUNC2(&cgrp->events_file);

		child = cgrp;
		cgrp = FUNC5(cgrp);
	} while (cgrp);
}