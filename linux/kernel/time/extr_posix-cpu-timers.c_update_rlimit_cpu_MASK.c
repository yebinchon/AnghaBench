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
typedef  unsigned long u64 ;
struct task_struct {TYPE_1__* sighand; } ;
struct TYPE_2__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUCLOCK_PROF ; 
 unsigned long NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ,unsigned long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct task_struct *task, unsigned long rlim_new)
{
	u64 nsecs = rlim_new * NSEC_PER_SEC;

	FUNC1(&task->sighand->siglock);
	FUNC0(task, CPUCLOCK_PROF, &nsecs, NULL);
	FUNC2(&task->sighand->siglock);
}