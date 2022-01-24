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
struct task_struct {int /*<<< orphan*/  task_works; } ;
struct callback_head {struct callback_head* next; } ;

/* Variables and functions */
 int ESRCH ; 
 struct callback_head* FUNC0 (int /*<<< orphan*/ ) ; 
 struct callback_head* FUNC1 (int /*<<< orphan*/ *,struct callback_head*,struct callback_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 scalar_t__ FUNC3 (int) ; 
 struct callback_head work_exited ; 

int
FUNC4(struct task_struct *task, struct callback_head *work, bool notify)
{
	struct callback_head *head;

	do {
		head = FUNC0(task->task_works);
		if (FUNC3(head == &work_exited))
			return -ESRCH;
		work->next = head;
	} while (FUNC1(&task->task_works, head, work) != head);

	if (notify)
		FUNC2(task);
	return 0;
}