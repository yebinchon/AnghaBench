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

/* Variables and functions */
 int PF_KTHREAD ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  freezer_lock ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 scalar_t__ FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*,int /*<<< orphan*/ ) ; 

bool FUNC7(struct task_struct *p)
{
	unsigned long flags;

	/*
	 * This check can race with freezer_do_not_count, but worst case that
	 * will result in an extra wakeup being sent to the task.  It does not
	 * race with freezer_count(), the barriers in freezer_count() and
	 * freezer_should_skip() ensure that either freezer_count() sees
	 * freezing == true in try_to_freeze() and freezes, or
	 * freezer_should_skip() sees !PF_FREEZE_SKIP and freezes the task
	 * normally.
	 */
	if (FUNC1(p))
		return false;

	FUNC4(&freezer_lock, flags);
	if (!FUNC2(p) || FUNC3(p)) {
		FUNC5(&freezer_lock, flags);
		return false;
	}

	if (!(p->flags & PF_KTHREAD))
		FUNC0(p);
	else
		FUNC6(p, TASK_INTERRUPTIBLE);

	FUNC5(&freezer_lock, flags);
	return true;
}