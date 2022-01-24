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
struct kthread_worker {int /*<<< orphan*/  work_list; struct task_struct* task; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kthread_worker*) ; 
 int /*<<< orphan*/  FUNC2 (struct kthread_worker*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct kthread_worker *worker)
{
	struct task_struct *task;

	task = worker->task;
	if (FUNC0(!task))
		return;

	FUNC2(worker);
	FUNC3(task);
	FUNC0(!FUNC4(&worker->work_list));
	FUNC1(worker);
}