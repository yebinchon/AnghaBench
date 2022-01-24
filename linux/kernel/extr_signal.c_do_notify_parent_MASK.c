#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct task_struct {scalar_t__ parent_exec_id; int exit_code; TYPE_4__* parent; int /*<<< orphan*/  ptrace; TYPE_1__* signal; struct task_struct* group_leader; } ;
struct sighand_struct {int /*<<< orphan*/  siglock; TYPE_3__* action; } ;
struct kernel_siginfo {int si_signo; int si_status; int /*<<< orphan*/  si_code; void* si_stime; void* si_utime; int /*<<< orphan*/  si_uid; int /*<<< orphan*/  si_pid; scalar_t__ si_errno; } ;
struct TYPE_11__ {scalar_t__ self_exec_id; struct sighand_struct* sighand; } ;
struct TYPE_9__ {scalar_t__ sa_handler; int sa_flags; } ;
struct TYPE_10__ {TYPE_2__ sa; } ;
struct TYPE_8__ {scalar_t__ stime; scalar_t__ utime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CLD_DUMPED ; 
 int /*<<< orphan*/  CLD_EXITED ; 
 int /*<<< orphan*/  CLD_KILLED ; 
 int SA_NOCLDWAIT ; 
 int SIGCHLD ; 
 scalar_t__ SIG_IGN ; 
 int /*<<< orphan*/  FUNC1 (int,struct kernel_siginfo*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct kernel_siginfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC15 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC17 (struct task_struct*) ; 
 int /*<<< orphan*/  user_ns ; 
 scalar_t__ FUNC18 (int) ; 

bool FUNC19(struct task_struct *tsk, int sig)
{
	struct kernel_siginfo info;
	unsigned long flags;
	struct sighand_struct *psig;
	bool autoreap = false;
	u64 utime, stime;

	FUNC0(sig == -1);

 	/* do_notify_parent_cldstop should have been called instead.  */
 	FUNC0(FUNC14(tsk));

	FUNC0(!tsk->ptrace &&
	       (tsk->group_leader != tsk || !FUNC17(tsk)));

	/* Wake up all pidfd waiters */
	FUNC4(tsk);

	if (sig != SIGCHLD) {
		/*
		 * This is only possible if parent == real_parent.
		 * Check if it has changed security domain.
		 */
		if (tsk->parent_exec_id != tsk->parent->self_exec_id)
			sig = SIGCHLD;
	}

	FUNC3(&info);
	info.si_signo = sig;
	info.si_errno = 0;
	/*
	 * We are under tasklist_lock here so our parent is tied to
	 * us and cannot change.
	 *
	 * task_active_pid_ns will always return the same pid namespace
	 * until a task passes through release_task.
	 *
	 * write_lock() currently calls preempt_disable() which is the
	 * same as rcu_read_lock(), but according to Oleg, this is not
	 * correct to rely on this
	 */
	FUNC7();
	info.si_pid = FUNC15(tsk, FUNC11(tsk->parent));
	info.si_uid = FUNC5(FUNC13(tsk->parent, user_ns),
				       FUNC16(tsk));
	FUNC8();

	FUNC12(tsk, &utime, &stime);
	info.si_utime = FUNC6(utime + tsk->signal->utime);
	info.si_stime = FUNC6(stime + tsk->signal->stime);

	info.si_status = tsk->exit_code & 0x7f;
	if (tsk->exit_code & 0x80)
		info.si_code = CLD_DUMPED;
	else if (tsk->exit_code & 0x7f)
		info.si_code = CLD_KILLED;
	else {
		info.si_code = CLD_EXITED;
		info.si_status = tsk->exit_code >> 8;
	}

	psig = tsk->parent->sighand;
	FUNC9(&psig->siglock, flags);
	if (!tsk->ptrace && sig == SIGCHLD &&
	    (psig->action[SIGCHLD-1].sa.sa_handler == SIG_IGN ||
	     (psig->action[SIGCHLD-1].sa.sa_flags & SA_NOCLDWAIT))) {
		/*
		 * We are exiting and our parent doesn't care.  POSIX.1
		 * defines special semantics for setting SIGCHLD to SIG_IGN
		 * or setting the SA_NOCLDWAIT flag: we should be reaped
		 * automatically and not left for our parent's wait4 call.
		 * Rather than having the parent do it as a magic kind of
		 * signal handler, we just set this to tell do_exit that we
		 * can be cleaned up without becoming a zombie.  Note that
		 * we still call __wake_up_parent in this case, because a
		 * blocked sys_wait4 might now return -ECHILD.
		 *
		 * Whether we send SIGCHLD or not for SA_NOCLDWAIT
		 * is implementation-defined: we do (if you don't want
		 * it, just use SIG_IGN instead).
		 */
		autoreap = true;
		if (psig->action[SIGCHLD-1].sa.sa_handler == SIG_IGN)
			sig = 0;
	}
	if (FUNC18(sig) && sig)
		FUNC1(sig, &info, tsk->parent);
	FUNC2(tsk, tsk->parent);
	FUNC10(&psig->siglock, flags);

	return autoreap;
}