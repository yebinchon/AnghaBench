#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int flags; int exit_state; long ptrace; int /*<<< orphan*/  jobctl; TYPE_2__* signal; TYPE_1__* sighand; } ;
struct TYPE_4__ {int /*<<< orphan*/  cred_guard_mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int EIO ; 
 int EPERM ; 
 int ERESTARTNOINTR ; 
 int JOBCTL_TRAPPING ; 
 int /*<<< orphan*/  JOBCTL_TRAPPING_BIT ; 
 int JOBCTL_TRAP_STOP ; 
 int PF_KTHREAD ; 
 int /*<<< orphan*/  PTRACE_ATTACH ; 
 int /*<<< orphan*/  PTRACE_MODE_ATTACH_REALCREDS ; 
 scalar_t__ PTRACE_O_MASK ; 
 long PTRACE_SEIZE ; 
 unsigned long PT_OPT_FLAG_SHIFT ; 
 unsigned long PT_PTRACED ; 
 unsigned long PT_SEIZED ; 
 int /*<<< orphan*/  SEND_SIG_PRIV ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int /*<<< orphan*/  __TASK_STOPPED ; 
 int FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*) ; 
 scalar_t__ FUNC13 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct task_struct*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct task_struct *task, long request,
			 unsigned long addr,
			 unsigned long flags)
{
	bool seize = (request == PTRACE_SEIZE);
	int retval;

	retval = -EIO;
	if (seize) {
		if (addr != 0)
			goto out;
		if (flags & ~(unsigned long)PTRACE_O_MASK)
			goto out;
		flags = PT_PTRACED | PT_SEIZED | (flags << PT_OPT_FLAG_SHIFT);
	} else {
		flags = PT_PTRACED;
	}

	FUNC1(task);

	retval = -EPERM;
	if (FUNC15(task->flags & PF_KTHREAD))
		goto out;
	if (FUNC6(task, current))
		goto out;

	/*
	 * Protect exec's credential calculations against our interference;
	 * SUID, SGID and LSM creds get determined differently
	 * under ptrace.
	 */
	retval = -ERESTARTNOINTR;
	if (FUNC2(&task->signal->cred_guard_mutex))
		goto out;

	FUNC12(task);
	retval = FUNC0(task, PTRACE_MODE_ATTACH_REALCREDS);
	FUNC14(task);
	if (retval)
		goto unlock_creds;

	FUNC17(&tasklist_lock);
	retval = -EPERM;
	if (FUNC15(task->exit_state))
		goto unlock_tasklist;
	if (task->ptrace)
		goto unlock_tasklist;

	if (seize)
		flags |= PT_SEIZED;
	task->ptrace = flags;

	FUNC5(task, current);

	/* SEIZE doesn't trap tracee on attach */
	if (!seize)
		FUNC7(SIGSTOP, SEND_SIG_PRIV, task);

	FUNC9(&task->sighand->siglock);

	/*
	 * If the task is already STOPPED, set JOBCTL_TRAP_STOP and
	 * TRAPPING, and kick it so that it transits to TRACED.  TRAPPING
	 * will be cleared if the child completes the transition or any
	 * event which clears the group stop states happens.  We'll wait
	 * for the transition to complete before returning from this
	 * function.
	 *
	 * This hides STOPPED -> RUNNING -> TRACED transition from the
	 * attaching thread but a different thread in the same group can
	 * still observe the transient RUNNING state.  IOW, if another
	 * thread's WNOHANG wait(2) on the stopped tracee races against
	 * ATTACH, the wait(2) may fail due to the transient RUNNING.
	 *
	 * The following task_is_stopped() test is safe as both transitions
	 * in and out of STOPPED are protected by siglock.
	 */
	if (FUNC11(task) &&
	    FUNC13(task, JOBCTL_TRAP_STOP | JOBCTL_TRAPPING))
		FUNC8(task, __TASK_STOPPED);

	FUNC10(&task->sighand->siglock);

	retval = 0;
unlock_tasklist:
	FUNC18(&tasklist_lock);
unlock_creds:
	FUNC3(&task->signal->cred_guard_mutex);
out:
	if (!retval) {
		/*
		 * We do not bother to change retval or clear JOBCTL_TRAPPING
		 * if wait_on_bit() was interrupted by SIGKILL. The tracer will
		 * not return to user-mode, it will exit and clear this bit in
		 * __ptrace_unlink() if it wasn't already cleared by the tracee;
		 * and until then nobody can ptrace this task.
		 */
		FUNC16(&task->jobctl, JOBCTL_TRAPPING_BIT, TASK_KILLABLE);
		FUNC4(task, PTRACE_ATTACH);
	}

	return retval;
}