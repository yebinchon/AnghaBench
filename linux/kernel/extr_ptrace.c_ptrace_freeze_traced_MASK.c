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
struct task_struct {int jobctl; TYPE_1__* sighand; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int JOBCTL_LISTENING ; 
 int /*<<< orphan*/  __TASK_TRACED ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct task_struct*) ; 

__attribute__((used)) static bool FUNC4(struct task_struct *task)
{
	bool ret = false;

	/* Lockless, nobody but us can set this flag */
	if (task->jobctl & JOBCTL_LISTENING)
		return ret;

	FUNC1(&task->sighand->siglock);
	if (FUNC3(task) && !FUNC0(task)) {
		task->state = __TASK_TRACED;
		ret = true;
	}
	FUNC2(&task->sighand->siglock);

	return ret;
}