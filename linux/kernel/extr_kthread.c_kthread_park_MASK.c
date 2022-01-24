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
struct task_struct {int flags; } ;
struct kthread {int /*<<< orphan*/  parked; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOSYS ; 
 int /*<<< orphan*/  KTHREAD_SHOULD_PARK ; 
 int PF_EXITING ; 
 int /*<<< orphan*/  TASK_PARKED ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct kthread* FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 

int FUNC8(struct task_struct *k)
{
	struct kthread *kthread = FUNC4(k);

	if (FUNC0(k->flags & PF_EXITING))
		return -ENOSYS;

	if (FUNC1(FUNC3(KTHREAD_SHOULD_PARK, &kthread->flags)))
		return -EBUSY;

	FUNC2(KTHREAD_SHOULD_PARK, &kthread->flags);
	if (k != current) {
		FUNC7(k);
		/*
		 * Wait for __kthread_parkme() to complete(), this means we
		 * _will_ have TASK_PARKED and are about to call schedule().
		 */
		FUNC5(&kthread->parked);
		/*
		 * Now wait for that schedule() to complete and the task to
		 * get scheduled out.
		 */
		FUNC1(!FUNC6(k, TASK_PARKED));
	}

	return 0;
}