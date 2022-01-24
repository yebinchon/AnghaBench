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
struct task_struct {int flags; int /*<<< orphan*/  pi_lock; int /*<<< orphan*/  task_works; } ;
struct callback_head {int /*<<< orphan*/  (* func ) (struct callback_head*) ;struct callback_head* next; } ;

/* Variables and functions */
 int PF_EXITING ; 
 struct callback_head* FUNC0 (int /*<<< orphan*/ ) ; 
 struct callback_head* FUNC1 (int /*<<< orphan*/ *,struct callback_head*,struct callback_head*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct callback_head*) ; 
 struct callback_head work_exited ; 

void FUNC6(void)
{
	struct task_struct *task = current;
	struct callback_head *work, *head, *next;

	for (;;) {
		/*
		 * work->func() can do task_work_add(), do not set
		 * work_exited unless the list is empty.
		 */
		FUNC3(&task->pi_lock);
		do {
			work = FUNC0(task->task_works);
			head = !work && (task->flags & PF_EXITING) ?
				&work_exited : NULL;
		} while (FUNC1(&task->task_works, work, head) != work);
		FUNC4(&task->pi_lock);

		if (!work)
			break;

		do {
			next = work->next;
			work->func(work);
			work = next;
			FUNC2();
		} while (work);
	}
}