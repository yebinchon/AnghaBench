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
typedef  int /*<<< orphan*/  uid_t ;
struct waitid_info {int cause; int status; int pid; int /*<<< orphan*/  uid; } ;
struct wait_opts {int wo_flags; int wo_stat; struct waitid_info* wo_info; scalar_t__ wo_rusage; } ;
struct task_struct {TYPE_1__* sighand; } ;
typedef  int pid_t ;
struct TYPE_2__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int CLD_STOPPED ; 
 int CLD_TRAPPED ; 
 int /*<<< orphan*/  RUSAGE_BOTH ; 
 int WNOWAIT ; 
 int WUNTRACED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct task_struct*) ; 
 int* FUNC11 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct wait_opts *wo,
				int ptrace, struct task_struct *p)
{
	struct waitid_info *infop;
	int exit_code, *p_code, why;
	uid_t uid = 0; /* unneeded, required by compiler */
	pid_t pid;

	/*
	 * Traditionally we see ptrace'd stopped tasks regardless of options.
	 */
	if (!ptrace && !(wo->wo_flags & WUNTRACED))
		return 0;

	if (!FUNC11(p, ptrace))
		return 0;

	exit_code = 0;
	FUNC8(&p->sighand->siglock);

	p_code = FUNC11(p, ptrace);
	if (FUNC13(!p_code))
		goto unlock_sig;

	exit_code = *p_code;
	if (!exit_code)
		goto unlock_sig;

	if (!FUNC13(wo->wo_flags & WNOWAIT))
		*p_code = 0;

	uid = FUNC1(FUNC0(), FUNC12(p));
unlock_sig:
	FUNC9(&p->sighand->siglock);
	if (!exit_code)
		return 0;

	/*
	 * Now we are pretty sure this task is interesting.
	 * Make sure it doesn't get reaped out from under us while we
	 * give up the lock and then examine it below.  We don't want to
	 * keep holding onto the tasklist_lock while we call getrusage and
	 * possibly take page faults for user memory.
	 */
	FUNC2(p);
	pid = FUNC10(p);
	why = ptrace ? CLD_TRAPPED : CLD_STOPPED;
	FUNC6(&tasklist_lock);
	FUNC7();
	if (wo->wo_rusage)
		FUNC3(p, RUSAGE_BOTH, wo->wo_rusage);
	FUNC5(p);

	if (FUNC4(!(wo->wo_flags & WNOWAIT)))
		wo->wo_stat = (exit_code << 8) | 0x7f;

	infop = wo->wo_info;
	if (infop) {
		infop->cause = why;
		infop->status = exit_code;
		infop->pid = pid;
		infop->uid = uid;
	}
	return pid;
}