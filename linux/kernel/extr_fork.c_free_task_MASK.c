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
struct task_struct {int flags; int /*<<< orphan*/  stack_refcount; } ;

/* Variables and functions */
 int PF_KTHREAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 

void FUNC9(struct task_struct *tsk)
{
#ifndef CONFIG_THREAD_INFO_IN_TASK
	/*
	 * The task is finally done with both the stack and thread_info,
	 * so free both.
	 */
	FUNC7(tsk);
#else
	/*
	 * If the task had a separate stack allocation, it should be gone
	 * by now.
	 */
	WARN_ON_ONCE(refcount_read(&tsk->stack_refcount) != 0);
#endif
	FUNC8(tsk);
	FUNC4(tsk);
	FUNC5(tsk);
	FUNC1(tsk);
	if (tsk->flags & PF_KTHREAD)
		FUNC2(tsk);
	FUNC3(tsk);
}