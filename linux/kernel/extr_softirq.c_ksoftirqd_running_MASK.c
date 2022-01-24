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
struct task_struct {scalar_t__ state; } ;

/* Variables and functions */
 unsigned long SOFTIRQ_NOW_MASK ; 
 scalar_t__ TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 struct task_struct* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ksoftirqd ; 

__attribute__((used)) static bool FUNC2(unsigned long pending)
{
	struct task_struct *tsk = FUNC1(ksoftirqd);

	if (pending & SOFTIRQ_NOW_MASK)
		return false;
	return tsk && (tsk->state == TASK_RUNNING) &&
		!FUNC0(tsk);
}