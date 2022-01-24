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
struct task_struct {int jobctl; } ;

/* Variables and functions */
 int JOBCTL_TRAPPING ; 
 int /*<<< orphan*/  JOBCTL_TRAPPING_BIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 

void FUNC3(struct task_struct *task)
{
	if (FUNC1(task->jobctl & JOBCTL_TRAPPING)) {
		task->jobctl &= ~JOBCTL_TRAPPING;
		FUNC0();	/* advised by wake_up_bit() */
		FUNC2(&task->jobctl, JOBCTL_TRAPPING_BIT);
	}
}