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
struct task_struct {scalar_t__ exit_state; int exit_signal; struct sighand_struct* sighand; int /*<<< orphan*/  parent; int /*<<< orphan*/  ptrace; struct task_struct* group_leader; int /*<<< orphan*/  sibling; int /*<<< orphan*/  tasks; int /*<<< orphan*/  pid; int /*<<< orphan*/  real_start_time; int /*<<< orphan*/  start_time; struct signal_struct* signal; } ;
struct signal_struct {int notify_count; struct task_struct* group_exit_task; } ;
struct sighand_struct {int /*<<< orphan*/  siglock; int /*<<< orphan*/  action; int /*<<< orphan*/  count; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int ENOMEM ; 
 scalar_t__ EXIT_DEAD ; 
 scalar_t__ EXIT_ZOMBIE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PIDTYPE_PGID ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 int /*<<< orphan*/  PIDTYPE_SID ; 
 int /*<<< orphan*/  PIDTYPE_TGID ; 
 void* SIGCHLD ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int /*<<< orphan*/  FUNC1 (struct sighand_struct*) ; 
 scalar_t__ FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct signal_struct*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (struct task_struct*) ; 
 struct sighand_struct* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sighand_struct*,struct sighand_struct*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC22 (struct task_struct*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  sighand_cachep ; 
 scalar_t__ FUNC24 (struct signal_struct*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (struct task_struct*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 scalar_t__ FUNC30 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC31 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC32 (struct task_struct*,struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int FUNC36 (struct task_struct*) ; 

__attribute__((used)) static int FUNC37(struct task_struct *tsk)
{
	struct signal_struct *sig = tsk->signal;
	struct sighand_struct *oldsighand = tsk->sighand;
	spinlock_t *lock = &oldsighand->siglock;

	if (FUNC30(tsk))
		goto no_thread_group;

	/*
	 * Kill all other threads in the thread group.
	 */
	FUNC26(lock);
	if (FUNC24(sig)) {
		/*
		 * Another group action in progress, just
		 * return so that the signal is processed.
		 */
		FUNC28(lock);
		return -EAGAIN;
	}

	sig->group_exit_task = tsk;
	sig->notify_count = FUNC36(tsk);
	if (!FUNC31(tsk))
		sig->notify_count--;

	while (sig->notify_count) {
		FUNC3(TASK_KILLABLE);
		FUNC28(lock);
		FUNC23();
		if (FUNC2(tsk))
			goto killed;
		FUNC26(lock);
	}
	FUNC28(lock);

	/*
	 * At this point all other threads have exited, all we have to
	 * do is to wait for the thread group leader to become inactive,
	 * and to assume its PID:
	 */
	if (!FUNC31(tsk)) {
		struct task_struct *leader = tsk->group_leader;

		for (;;) {
			FUNC5(tsk);
			FUNC34(&tasklist_lock);
			/*
			 * Do this under tasklist_lock to ensure that
			 * exit_notify() can't miss ->group_exit_task
			 */
			sig->notify_count = -1;
			if (FUNC12(leader->exit_state))
				break;
			FUNC3(TASK_KILLABLE);
			FUNC35(&tasklist_lock);
			FUNC6(tsk);
			FUNC23();
			if (FUNC2(tsk))
				goto killed;
		}

		/*
		 * The only record we have of the real-time age of a
		 * process, regardless of execs it's done, is start_time.
		 * All the past CPU time is accumulated in signal_struct
		 * from sister threads now dead.  But in this non-leader
		 * exec, nothing survives from the original leader thread,
		 * whose birth marks the true age of this process now.
		 * When we take on its identity by switching to its PID, we
		 * also take its birthdate (always earlier than our own).
		 */
		tsk->start_time = leader->start_time;
		tsk->real_start_time = leader->real_start_time;

		FUNC0(!FUNC22(leader, tsk));
		FUNC0(FUNC10(tsk));
		/*
		 * An exec() starts a new thread group with the
		 * TGID of the previous thread group. Rehash the
		 * two threads with a switched PID, and release
		 * the former thread group leader:
		 */

		/* Become a process group leader with the old leader's pid.
		 * The old leader becomes a thread of the this thread group.
		 * Note: The old leader also uses this pid until release_task
		 *       is called.  Odd but simple and correct.
		 */
		tsk->pid = leader->pid;
		FUNC7(tsk, PIDTYPE_PID, FUNC29(leader));
		FUNC32(leader, tsk, PIDTYPE_TGID);
		FUNC32(leader, tsk, PIDTYPE_PGID);
		FUNC32(leader, tsk, PIDTYPE_SID);

		FUNC14(&leader->tasks, &tsk->tasks);
		FUNC13(&leader->sibling, &tsk->sibling);

		tsk->group_leader = tsk;
		leader->group_leader = tsk;

		tsk->exit_signal = SIGCHLD;
		leader->exit_signal = -1;

		FUNC0(leader->exit_state != EXIT_ZOMBIE);
		leader->exit_state = EXIT_DEAD;

		/*
		 * We are going to release_task()->ptrace_unlink() silently,
		 * the tracer can sleep in do_wait(). EXIT_DEAD guarantees
		 * the tracer wont't block again waiting for this thread.
		 */
		if (FUNC33(leader->ptrace))
			FUNC4(leader, leader->parent);
		FUNC35(&tasklist_lock);
		FUNC6(tsk);

		FUNC21(leader);
	}

	sig->group_exit_task = NULL;
	sig->notify_count = 0;

no_thread_group:
	/* we have changed execution domain */
	tsk->exit_signal = SIGCHLD;

#ifdef CONFIG_POSIX_TIMERS
	exit_itimers(sig);
	flush_itimer_signals();
#endif

	if (FUNC19(&oldsighand->count) != 1) {
		struct sighand_struct *newsighand;
		/*
		 * This ->sighand is shared with the CLONE_SIGHAND
		 * but not CLONE_THREAD task, switch to the new one.
		 */
		newsighand = FUNC11(sighand_cachep, GFP_KERNEL);
		if (!newsighand)
			return -ENOMEM;

		FUNC20(&newsighand->count, 1);
		FUNC15(newsighand->action, oldsighand->action,
		       sizeof(newsighand->action));

		FUNC34(&tasklist_lock);
		FUNC25(&oldsighand->siglock);
		FUNC16(tsk->sighand, newsighand);
		FUNC27(&oldsighand->siglock);
		FUNC35(&tasklist_lock);

		FUNC1(oldsighand);
	}

	FUNC0(!FUNC31(tsk));
	return 0;

killed:
	/* protects against exit_notify() and __exit_signal() */
	FUNC17(&tasklist_lock);
	sig->group_exit_task = NULL;
	sig->notify_count = 0;
	FUNC18(&tasklist_lock);
	return -EAGAIN;
}