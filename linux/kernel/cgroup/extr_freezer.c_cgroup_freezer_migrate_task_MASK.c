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
struct task_struct {int flags; scalar_t__ frozen; } ;
struct cgroup {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGRP_FREEZE ; 
 int PF_KTHREAD ; 
 int /*<<< orphan*/  FUNC0 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC3 (struct cgroup*) ; 
 int /*<<< orphan*/  css_set_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct task_struct *task,
				 struct cgroup *src, struct cgroup *dst)
{
	FUNC4(&css_set_lock);

	/*
	 * Kernel threads are not supposed to be frozen at all.
	 */
	if (task->flags & PF_KTHREAD)
		return;

	/*
	 * Adjust counters of freezing and frozen tasks.
	 * Note, that if the task is frozen, but the destination cgroup is not
	 * frozen, we bump both counters to keep them balanced.
	 */
	if (task->frozen) {
		FUNC2(dst);
		FUNC0(src);
	}
	FUNC3(dst);
	FUNC3(src);

	/*
	 * Force the task to the desired state.
	 */
	FUNC1(task, FUNC5(CGRP_FREEZE, &dst->flags));
}