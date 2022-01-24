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
struct task_struct {unsigned long nvcsw; unsigned long nivcsw; int flags; unsigned long last_switch_count; unsigned long last_switch_time; int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;
struct TYPE_2__ {int /*<<< orphan*/  version; int /*<<< orphan*/  release; } ;

/* Variables and functions */
 unsigned long HZ ; 
 int PF_FREEZER_SKIP ; 
 int PF_FROZEN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int hung_task_call_panic ; 
 int hung_task_show_lock ; 
 TYPE_1__* FUNC1 () ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ sysctl_hung_task_panic ; 
 scalar_t__ sysctl_hung_task_warnings ; 
 scalar_t__ FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct task_struct *t, unsigned long timeout)
{
	unsigned long switch_count = t->nvcsw + t->nivcsw;

	/*
	 * Ensure the task is not frozen.
	 * Also, skip vfork and any other user process that freezer should skip.
	 */
	if (FUNC9(t->flags & (PF_FROZEN | PF_FREEZER_SKIP)))
	    return;

	/*
	 * When a freshly created task is scheduled once, changes its state to
	 * TASK_UNINTERRUPTIBLE without having ever been switched out once, it
	 * musn't be checked.
	 */
	if (FUNC9(!switch_count))
		return;

	if (switch_count != t->last_switch_count) {
		t->last_switch_count = switch_count;
		t->last_switch_time = jiffies;
		return;
	}
	if (FUNC6(t->last_switch_time + timeout * HZ))
		return;

	FUNC8(t);

	if (sysctl_hung_task_panic) {
		FUNC0();
		hung_task_show_lock = true;
		hung_task_call_panic = true;
	}

	/*
	 * Ok, the task did not get scheduled for more than 2 minutes,
	 * complain:
	 */
	if (sysctl_hung_task_warnings) {
		if (sysctl_hung_task_warnings > 0)
			sysctl_hung_task_warnings--;
		FUNC2("INFO: task %s:%d blocked for more than %ld seconds.\n",
		       t->comm, t->pid, (jiffies - t->last_switch_time) / HZ);
		FUNC2("      %s %s %.*s\n",
			FUNC3(), FUNC1()->release,
			(int)FUNC5(FUNC1()->version, " "),
			FUNC1()->version);
		FUNC2("\"echo 0 > /proc/sys/kernel/hung_task_timeout_secs\""
			" disables this message.\n");
		FUNC4(t);
		hung_task_show_lock = true;
	}

	FUNC7();
}