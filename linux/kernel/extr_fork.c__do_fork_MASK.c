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
typedef  int u64 ;
struct task_struct {struct completion* vfork_done; } ;
struct pid {int dummy; } ;
struct kernel_clone_args {int flags; scalar_t__ exit_signal; int /*<<< orphan*/  parent_tid; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int CLONE_PARENT_SETTID ; 
 int CLONE_UNTRACED ; 
 int CLONE_VFORK ; 
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 int PTRACE_EVENT_CLONE ; 
 int PTRACE_EVENT_FORK ; 
 int PTRACE_EVENT_VFORK ; 
 int PTRACE_EVENT_VFORK_DONE ; 
 long FUNC1 (struct task_struct*) ; 
 scalar_t__ SIGCHLD ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct task_struct* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct kernel_clone_args*) ; 
 int /*<<< orphan*/  current ; 
 struct pid* FUNC4 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct completion*) ; 
 scalar_t__ FUNC7 (int) ; 
 long FUNC8 (struct pid*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,struct pid*) ; 
 int /*<<< orphan*/  FUNC11 (struct pid*) ; 
 int /*<<< orphan*/  FUNC12 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct task_struct*) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct task_struct*,struct completion*) ; 
 int /*<<< orphan*/  FUNC16 (struct task_struct*) ; 

long FUNC17(struct kernel_clone_args *args)
{
	u64 clone_flags = args->flags;
	struct completion vfork;
	struct pid *pid;
	struct task_struct *p;
	int trace = 0;
	long nr;

	/*
	 * Determine whether and which event to report to ptracer.  When
	 * called from kernel_thread or CLONE_UNTRACED is explicitly
	 * requested, no event is reported; otherwise, report if the event
	 * for the type of forking is enabled.
	 */
	if (!(clone_flags & CLONE_UNTRACED)) {
		if (clone_flags & CLONE_VFORK)
			trace = PTRACE_EVENT_VFORK;
		else if (args->exit_signal != SIGCHLD)
			trace = PTRACE_EVENT_CLONE;
		else
			trace = PTRACE_EVENT_FORK;

		if (FUNC7(!FUNC9(current, trace)))
			trace = 0;
	}

	p = FUNC3(NULL, trace, NUMA_NO_NODE, args);
	FUNC2();

	if (FUNC0(p))
		return FUNC1(p);

	/*
	 * Do this prior waking up the new thread - the thread pointer
	 * might get invalid after that point, if the thread exits quickly.
	 */
	FUNC13(current, p);

	pid = FUNC4(p, PIDTYPE_PID);
	nr = FUNC8(pid);

	if (clone_flags & CLONE_PARENT_SETTID)
		FUNC12(nr, args->parent_tid);

	if (clone_flags & CLONE_VFORK) {
		p->vfork_done = &vfork;
		FUNC6(&vfork);
		FUNC5(p);
	}

	FUNC16(p);

	/* forking complete and child started to run, tell ptracer */
	if (FUNC14(trace))
		FUNC10(trace, pid);

	if (clone_flags & CLONE_VFORK) {
		if (!FUNC15(p, &vfork))
			FUNC10(PTRACE_EVENT_VFORK_DONE, pid);
	}

	FUNC11(pid);
	return nr;
}