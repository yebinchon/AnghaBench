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
struct kthread {int /*<<< orphan*/  flags; int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  KTHREAD_IS_PER_CPU ; 
 int /*<<< orphan*/  KTHREAD_SHOULD_PARK ; 
 int /*<<< orphan*/  TASK_PARKED ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct kthread* FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,int /*<<< orphan*/ ) ; 

void FUNC5(struct task_struct *k)
{
	struct kthread *kthread = FUNC3(k);

	/*
	 * Newly created kthread was parked when the CPU was offline.
	 * The binding was lost and we need to set it again.
	 */
	if (FUNC2(KTHREAD_IS_PER_CPU, &kthread->flags))
		FUNC0(k, kthread->cpu, TASK_PARKED);

	FUNC1(KTHREAD_SHOULD_PARK, &kthread->flags);
	/*
	 * __kthread_parkme() will either see !SHOULD_PARK or get the wakeup.
	 */
	FUNC4(k, TASK_PARKED);
}