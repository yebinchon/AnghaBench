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
struct task_struct {int /*<<< orphan*/  jobctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  JOBCTL_TRAP_FREEZE ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

__attribute__((used)) static void FUNC4(struct task_struct *task, bool freeze)
{
	unsigned long flags;

	/* If the task is about to die, don't bother with freezing it. */
	if (!FUNC0(task, &flags))
		return;

	if (freeze) {
		task->jobctl |= JOBCTL_TRAP_FREEZE;
		FUNC1(task, false);
	} else {
		task->jobctl &= ~JOBCTL_TRAP_FREEZE;
		FUNC3(task);
	}

	FUNC2(task, &flags);
}