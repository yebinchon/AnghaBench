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
struct task_struct {unsigned long jobctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long JOBCTL_PENDING_MASK ; 
 unsigned long JOBCTL_STOP_CONSUME ; 
 unsigned long JOBCTL_STOP_DEQUEUED ; 
 unsigned long JOBCTL_STOP_PENDING ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 

void FUNC2(struct task_struct *task, unsigned long mask)
{
	FUNC0(mask & ~JOBCTL_PENDING_MASK);

	if (mask & JOBCTL_STOP_PENDING)
		mask |= JOBCTL_STOP_CONSUME | JOBCTL_STOP_DEQUEUED;

	task->jobctl &= ~mask;

	if (!(task->jobctl & JOBCTL_PENDING_MASK))
		FUNC1(task);
}