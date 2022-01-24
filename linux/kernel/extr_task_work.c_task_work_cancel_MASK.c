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
typedef  scalar_t__ task_work_func_t ;
struct task_struct {int /*<<< orphan*/  pi_lock; struct callback_head* task_works; } ;
struct callback_head {scalar_t__ func; struct callback_head* next; } ;

/* Variables and functions */
 struct callback_head* FUNC0 (struct callback_head*) ; 
 struct callback_head* FUNC1 (struct callback_head**,struct callback_head*,struct callback_head*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

struct callback_head *
FUNC5(struct task_struct *task, task_work_func_t func)
{
	struct callback_head **pprev = &task->task_works;
	struct callback_head *work;
	unsigned long flags;

	if (FUNC2(!task->task_works))
		return NULL;
	/*
	 * If cmpxchg() fails we continue without updating pprev.
	 * Either we raced with task_work_add() which added the
	 * new entry before this work, we will find it again. Or
	 * we raced with task_work_run(), *pprev == NULL/exited.
	 */
	FUNC3(&task->pi_lock, flags);
	while ((work = FUNC0(*pprev))) {
		if (work->func != func)
			pprev = &work->next;
		else if (FUNC1(pprev, work, work->next) == work)
			break;
	}
	FUNC4(&task->pi_lock, flags);

	return work;
}