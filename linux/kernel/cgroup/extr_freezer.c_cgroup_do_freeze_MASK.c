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
struct task_struct {int flags; } ;
struct css_task_iter {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr_frozen_descendants; } ;
struct cgroup {scalar_t__ nr_descendants; TYPE_1__ freezer; int /*<<< orphan*/  self; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGRP_FREEZE ; 
 int PF_KTHREAD ; 
 int /*<<< orphan*/  FUNC0 (int,struct cgroup*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int) ; 
 int /*<<< orphan*/  cgroup_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  css_set_lock ; 
 int /*<<< orphan*/  FUNC4 (struct css_task_iter*) ; 
 struct task_struct* FUNC5 (struct css_task_iter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct css_task_iter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int unfreeze ; 

__attribute__((used)) static void FUNC11(struct cgroup *cgrp, bool freeze)
{
	struct css_task_iter it;
	struct task_struct *task;

	FUNC7(&cgroup_mutex);

	FUNC9(&css_set_lock);
	if (freeze)
		FUNC8(CGRP_FREEZE, &cgrp->flags);
	else
		FUNC3(CGRP_FREEZE, &cgrp->flags);
	FUNC10(&css_set_lock);

	if (freeze)
		FUNC0(freeze, cgrp);
	else
		FUNC0(unfreeze, cgrp);

	FUNC6(&cgrp->self, 0, &it);
	while ((task = FUNC5(&it))) {
		/*
		 * Ignore kernel threads here. Freezing cgroups containing
		 * kthreads isn't supported.
		 */
		if (task->flags & PF_KTHREAD)
			continue;
		FUNC1(task, freeze);
	}
	FUNC4(&it);

	/*
	 * Cgroup state should be revisited here to cover empty leaf cgroups
	 * and cgroups which descendants are already in the desired state.
	 */
	FUNC9(&css_set_lock);
	if (cgrp->nr_descendants == cgrp->freezer.nr_frozen_descendants)
		FUNC2(cgrp);
	FUNC10(&css_set_lock);
}