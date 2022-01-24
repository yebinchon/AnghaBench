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
struct task_struct {int flags; int jobctl; TYPE_2__* sighand; TYPE_1__* signal; scalar_t__ ptrace; struct cred* ptracer_cred; int /*<<< orphan*/  ptrace_entry; int /*<<< orphan*/  real_parent; int /*<<< orphan*/  parent; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_3__ {int flags; scalar_t__ group_stop_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int JOBCTL_STOP_PENDING ; 
 int JOBCTL_STOP_SIGMASK ; 
 int /*<<< orphan*/  JOBCTL_TRAP_MASK ; 
 int PF_EXITING ; 
 int SIGNAL_STOP_STOPPED ; 
 int SIGSTOP ; 
 int /*<<< orphan*/  TIF_SYSCALL_EMU ; 
 int /*<<< orphan*/  TIF_SYSCALL_TRACE ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 scalar_t__ FUNC9 (struct task_struct*) ; 

void FUNC10(struct task_struct *child)
{
	const struct cred *old_cred;
	FUNC0(!child->ptrace);

	FUNC1(child, TIF_SYSCALL_TRACE);
#ifdef TIF_SYSCALL_EMU
	clear_tsk_thread_flag(child, TIF_SYSCALL_EMU);
#endif

	child->parent = child->real_parent;
	FUNC2(&child->ptrace_entry);
	old_cred = child->ptracer_cred;
	child->ptracer_cred = NULL;
	FUNC4(old_cred);

	FUNC5(&child->sighand->siglock);
	child->ptrace = 0;
	/*
	 * Clear all pending traps and TRAPPING.  TRAPPING should be
	 * cleared regardless of JOBCTL_STOP_PENDING.  Do it explicitly.
	 */
	FUNC7(child, JOBCTL_TRAP_MASK);
	FUNC8(child);

	/*
	 * Reinstate JOBCTL_STOP_PENDING if group stop is in effect and
	 * @child isn't dead.
	 */
	if (!(child->flags & PF_EXITING) &&
	    (child->signal->flags & SIGNAL_STOP_STOPPED ||
	     child->signal->group_stop_count)) {
		child->jobctl |= JOBCTL_STOP_PENDING;

		/*
		 * This is only possible if this thread was cloned by the
		 * traced task running in the stopped group, set the signal
		 * for the future reports.
		 * FIXME: we should change ptrace_init_task() to handle this
		 * case.
		 */
		if (!(child->jobctl & JOBCTL_STOP_SIGMASK))
			child->jobctl |= SIGSTOP;
	}

	/*
	 * If transition to TASK_STOPPED is pending or in TASK_TRACED, kick
	 * @child in the butt.  Note that @resume should be used iff @child
	 * is in TASK_TRACED; otherwise, we might unduly disrupt
	 * TASK_KILLABLE sleeps.
	 */
	if (child->jobctl & JOBCTL_STOP_PENDING || FUNC9(child))
		FUNC3(child, true);

	FUNC6(&child->sighand->siglock);
}