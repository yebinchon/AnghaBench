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
typedef  scalar_t__ u64 ;
struct waitid_info {int status; int pid; int /*<<< orphan*/  uid; int /*<<< orphan*/  cause; } ;
struct wait_opts {int wo_flags; int wo_stat; struct waitid_info* wo_info; scalar_t__ wo_rusage; } ;
struct task_struct {int exit_code; int exit_state; int /*<<< orphan*/  exit_signal; struct signal_struct* signal; int /*<<< orphan*/  ioac; scalar_t__ nivcsw; scalar_t__ nvcsw; scalar_t__ maj_flt; scalar_t__ min_flt; } ;
struct signal_struct {unsigned long cmaxrss; int flags; int group_exit_code; int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  ioac; int /*<<< orphan*/  maxrss; scalar_t__ coublock; scalar_t__ oublock; scalar_t__ cinblock; scalar_t__ inblock; scalar_t__ cnivcsw; scalar_t__ nivcsw; scalar_t__ cnvcsw; scalar_t__ nvcsw; scalar_t__ cmaj_flt; scalar_t__ maj_flt; scalar_t__ cmin_flt; scalar_t__ min_flt; scalar_t__ cgtime; scalar_t__ gtime; scalar_t__ cstime; scalar_t__ cutime; } ;
typedef  int pid_t ;
struct TYPE_4__ {TYPE_1__* sighand; struct signal_struct* signal; } ;
struct TYPE_3__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLD_DUMPED ; 
 int /*<<< orphan*/  CLD_EXITED ; 
 int /*<<< orphan*/  CLD_KILLED ; 
 int EXIT_DEAD ; 
 int EXIT_TRACE ; 
 int EXIT_ZOMBIE ; 
 int /*<<< orphan*/  RUSAGE_BOTH ; 
 int SIGNAL_GROUP_EXIT ; 
 int WEXITED ; 
 int WNOWAIT ; 
 int FUNC0 (int*,int,int) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (struct task_struct*) ; 
 scalar_t__ FUNC19 (struct task_struct*) ; 
 int FUNC20 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC21 (struct task_struct*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 int /*<<< orphan*/  FUNC22 (struct task_struct*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC23 (struct task_struct*) ; 
 scalar_t__ FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC29(struct wait_opts *wo, struct task_struct *p)
{
	int state, status;
	pid_t pid = FUNC20(p);
	uid_t uid = FUNC3(FUNC1(), FUNC21(p));
	struct waitid_info *infop;

	if (!FUNC6(wo->wo_flags & WEXITED))
		return 0;

	if (FUNC24(wo->wo_flags & WNOWAIT)) {
		status = p->exit_code;
		FUNC4(p);
		FUNC11(&tasklist_lock);
		FUNC13();
		if (wo->wo_rusage)
			FUNC5(p, RUSAGE_BOTH, wo->wo_rusage);
		FUNC10(p);
		goto out_info;
	}
	/*
	 * Move the task's state to DEAD/TRACE, only one thread can do this.
	 */
	state = (FUNC8(p) && FUNC23(p)) ?
		EXIT_TRACE : EXIT_DEAD;
	if (FUNC0(&p->exit_state, EXIT_ZOMBIE, state) != EXIT_ZOMBIE)
		return 0;
	/*
	 * We own this thread, nobody else can reap it.
	 */
	FUNC11(&tasklist_lock);
	FUNC13();

	/*
	 * Check thread_group_leader() to exclude the traced sub-threads.
	 */
	if (state == EXIT_DEAD && FUNC23(p)) {
		struct signal_struct *sig = p->signal;
		struct signal_struct *psig = current->signal;
		unsigned long maxrss;
		u64 tgutime, tgstime;

		/*
		 * The resource counters for the group leader are in its
		 * own task_struct.  Those for dead threads in the group
		 * are in its signal_struct, as are those for the child
		 * processes it has previously reaped.  All these
		 * accumulate in the parent's signal_struct c* fields.
		 *
		 * We don't bother to take a lock here to protect these
		 * p->signal fields because the whole thread group is dead
		 * and nobody can change them.
		 *
		 * psig->stats_lock also protects us from our sub-theads
		 * which can reap other children at the same time. Until
		 * we change k_getrusage()-like users to rely on this lock
		 * we have to take ->siglock as well.
		 *
		 * We use thread_group_cputime_adjusted() to get times for
		 * the thread group, which consolidates times for all threads
		 * in the group including the group leader.
		 */
		FUNC22(p, &tgutime, &tgstime);
		FUNC14(&current->sighand->siglock);
		FUNC26(&psig->stats_lock);
		psig->cutime += tgutime + sig->cutime;
		psig->cstime += tgstime + sig->cstime;
		psig->cgtime += FUNC16(p) + sig->gtime + sig->cgtime;
		psig->cmin_flt +=
			p->min_flt + sig->min_flt + sig->cmin_flt;
		psig->cmaj_flt +=
			p->maj_flt + sig->maj_flt + sig->cmaj_flt;
		psig->cnvcsw +=
			p->nvcsw + sig->nvcsw + sig->cnvcsw;
		psig->cnivcsw +=
			p->nivcsw + sig->nivcsw + sig->cnivcsw;
		psig->cinblock +=
			FUNC18(p) +
			sig->inblock + sig->cinblock;
		psig->coublock +=
			FUNC19(p) +
			sig->oublock + sig->coublock;
		maxrss = FUNC7(sig->maxrss, sig->cmaxrss);
		if (psig->cmaxrss < maxrss)
			psig->cmaxrss = maxrss;
		FUNC17(&psig->ioac, &p->ioac);
		FUNC17(&psig->ioac, &sig->ioac);
		FUNC27(&psig->stats_lock);
		FUNC15(&current->sighand->siglock);
	}

	if (wo->wo_rusage)
		FUNC5(p, RUSAGE_BOTH, wo->wo_rusage);
	status = (p->signal->flags & SIGNAL_GROUP_EXIT)
		? p->signal->group_exit_code : p->exit_code;
	wo->wo_stat = status;

	if (state == EXIT_TRACE) {
		FUNC25(&tasklist_lock);
		/* We dropped tasklist, ptracer could die and untrace */
		FUNC9(p);

		/* If parent wants a zombie, don't release it now */
		state = EXIT_ZOMBIE;
		if (FUNC2(p, p->exit_signal))
			state = EXIT_DEAD;
		p->exit_state = state;
		FUNC28(&tasklist_lock);
	}
	if (state == EXIT_DEAD)
		FUNC12(p);

out_info:
	infop = wo->wo_info;
	if (infop) {
		if ((status & 0x7f) == 0) {
			infop->cause = CLD_EXITED;
			infop->status = status >> 8;
		} else {
			infop->cause = (status & 0x80) ? CLD_DUMPED : CLD_KILLED;
			infop->status = status & 0x7f;
		}
		infop->pid = pid;
		infop->uid = uid;
	}

	return pid;
}