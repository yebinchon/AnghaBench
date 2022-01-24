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
struct task_struct {int dummy; } ;
struct freezer {int state; } ;

/* Variables and functions */
 int CGROUP_FREEZING ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  freezer_cgrp_id ; 
 int /*<<< orphan*/  freezer_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct task_struct*,int /*<<< orphan*/ ) ; 
 struct freezer* FUNC6 (struct task_struct*) ; 

__attribute__((used)) static void FUNC7(struct task_struct *task)
{
	struct freezer *freezer;

	/*
	 * The root cgroup is non-freezable, so we can skip locking the
	 * freezer.  This is safe regardless of race with task migration.
	 * If we didn't race or won, skipping is obviously the right thing
	 * to do.  If we lost and root is the new cgroup, noop is still the
	 * right thing to do.
	 */
	if (FUNC5(task, freezer_cgrp_id))
		return;

	FUNC1(&freezer_mutex);
	FUNC3();

	freezer = FUNC6(task);
	if (freezer->state & CGROUP_FREEZING)
		FUNC0(task);

	FUNC4();
	FUNC2(&freezer_mutex);
}