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
typedef  int /*<<< orphan*/  uid_t ;
struct waitid_info {int pid; int /*<<< orphan*/  status; int /*<<< orphan*/  uid; int /*<<< orphan*/  cause; } ;
struct wait_opts {int wo_flags; int wo_stat; struct waitid_info* wo_info; scalar_t__ wo_rusage; } ;
struct task_struct {TYPE_2__* sighand; TYPE_1__* signal; } ;
typedef  int pid_t ;
struct TYPE_4__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLD_CONTINUED ; 
 int /*<<< orphan*/  RUSAGE_BOTH ; 
 int /*<<< orphan*/  SIGCONT ; 
 int SIGNAL_STOP_CONTINUED ; 
 int WCONTINUED ; 
 int WNOWAIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct wait_opts *wo, struct task_struct *p)
{
	struct waitid_info *infop;
	pid_t pid;
	uid_t uid;

	if (!FUNC11(wo->wo_flags & WCONTINUED))
		return 0;

	if (!(p->signal->flags & SIGNAL_STOP_CONTINUED))
		return 0;

	FUNC7(&p->sighand->siglock);
	/* Re-check with the lock held.  */
	if (!(p->signal->flags & SIGNAL_STOP_CONTINUED)) {
		FUNC8(&p->sighand->siglock);
		return 0;
	}
	if (!FUNC11(wo->wo_flags & WNOWAIT))
		p->signal->flags &= ~SIGNAL_STOP_CONTINUED;
	uid = FUNC1(FUNC0(), FUNC10(p));
	FUNC8(&p->sighand->siglock);

	pid = FUNC9(p);
	FUNC2(p);
	FUNC5(&tasklist_lock);
	FUNC6();
	if (wo->wo_rusage)
		FUNC3(p, RUSAGE_BOTH, wo->wo_rusage);
	FUNC4(p);

	infop = wo->wo_info;
	if (!infop) {
		wo->wo_stat = 0xffff;
	} else {
		infop->cause = CLD_CONTINUED;
		infop->pid = pid;
		infop->uid = uid;
		infop->status = SIGCONT;
	}
	return pid;
}