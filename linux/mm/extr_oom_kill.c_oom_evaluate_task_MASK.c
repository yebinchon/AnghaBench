#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct task_struct {TYPE_2__* signal; } ;
struct oom_control {unsigned long chosen_points; struct task_struct* chosen; int /*<<< orphan*/  totalpages; } ;
struct TYPE_4__ {TYPE_1__* oom_mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMF_OOM_SKIP ; 
 unsigned long ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct oom_control*) ; 
 int /*<<< orphan*/  FUNC2 (struct oom_control*) ; 
 unsigned long FUNC3 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,struct oom_control*) ; 
 scalar_t__ FUNC5 (struct task_struct*) ; 
 scalar_t__ FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct task_struct*) ; 

__attribute__((used)) static int FUNC10(struct task_struct *task, void *arg)
{
	struct oom_control *oc = arg;
	unsigned long points;

	if (FUNC6(task))
		goto next;

	/* p may not have freeable memory in nodemask */
	if (!FUNC1(oc) && !FUNC4(task, oc))
		goto next;

	/*
	 * This task already has access to memory reserves and is being killed.
	 * Don't allow any other task to have access to the reserves unless
	 * the task has MMF_OOM_SKIP because chances that it would release
	 * any memory is quite low.
	 */
	if (!FUNC2(oc) && FUNC9(task)) {
		if (FUNC8(MMF_OOM_SKIP, &task->signal->oom_mm->flags))
			goto next;
		goto abort;
	}

	/*
	 * If task is allocating a lot of memory and has been marked to be
	 * killed first if it triggers an oom, then select it.
	 */
	if (FUNC5(task)) {
		points = ULONG_MAX;
		goto select;
	}

	points = FUNC3(task, oc->totalpages);
	if (!points || points < oc->chosen_points)
		goto next;

select:
	if (oc->chosen)
		FUNC7(oc->chosen);
	FUNC0(task);
	oc->chosen = task;
	oc->chosen_points = points;
next:
	return 0;
abort:
	if (oc->chosen)
		FUNC7(oc->chosen);
	oc->chosen = (void *)-1UL;
	return 1;
}