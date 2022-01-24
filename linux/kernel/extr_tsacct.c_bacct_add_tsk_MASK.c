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
typedef  void* u64 ;
struct user_namespace {int dummy; } ;
struct taskstats {int /*<<< orphan*/  ac_comm; int /*<<< orphan*/  ac_majflt; int /*<<< orphan*/  ac_minflt; void* ac_stimescaled; void* ac_utimescaled; void* ac_stime; void* ac_utime; int /*<<< orphan*/  ac_ppid; int /*<<< orphan*/  ac_gid; int /*<<< orphan*/  ac_uid; int /*<<< orphan*/  ac_pid; int /*<<< orphan*/  ac_sched; int /*<<< orphan*/  ac_nice; int /*<<< orphan*/  ac_flag; int /*<<< orphan*/  ac_exitcode; void* ac_btime; void* ac_etime; } ;
struct task_struct {int flags; int /*<<< orphan*/  comm; int /*<<< orphan*/  maj_flt; int /*<<< orphan*/  min_flt; int /*<<< orphan*/  real_parent; int /*<<< orphan*/  policy; int /*<<< orphan*/  exit_code; void* start_time; } ;
struct pid_namespace {int dummy; } ;
struct cred {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACORE ; 
 int /*<<< orphan*/  AFORK ; 
 int /*<<< orphan*/  ASU ; 
 int /*<<< orphan*/  AXSIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NSEC_PER_USEC ; 
 int PF_DUMPCORE ; 
 int PF_FORKNOEXEC ; 
 int PF_SIGNALED ; 
 int PF_SUPERPRIV ; 
 scalar_t__ TASK_COMM_LEN ; 
 scalar_t__ TS_COMM_LEN ; 
 int /*<<< orphan*/  USEC_PER_SEC ; 
 struct cred* FUNC1 (struct task_struct*) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 void* FUNC6 () ; 
 void* FUNC7 () ; 
 scalar_t__ FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct task_struct*,void**,void**) ; 
 int /*<<< orphan*/  FUNC14 (struct task_struct*,void**,void**) ; 
 int /*<<< orphan*/  FUNC15 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC16 (struct task_struct*,struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct pid_namespace*) ; 
 scalar_t__ FUNC18 (struct task_struct*) ; 

void FUNC19(struct user_namespace *user_ns,
		   struct pid_namespace *pid_ns,
		   struct taskstats *stats, struct task_struct *tsk)
{
	const struct cred *tcred;
	u64 utime, stime, utimescaled, stimescaled;
	u64 delta;

	FUNC0(TS_COMM_LEN < TASK_COMM_LEN);

	/* calculate task elapsed time in nsec */
	delta = FUNC7() - tsk->start_time;
	/* Convert to micro seconds */
	FUNC3(delta, NSEC_PER_USEC);
	stats->ac_etime = delta;
	/* Convert to seconds for btime */
	FUNC3(delta, USEC_PER_SEC);
	stats->ac_btime = FUNC6() - delta;
	if (FUNC18(tsk)) {
		stats->ac_exitcode = tsk->exit_code;
		if (tsk->flags & PF_FORKNOEXEC)
			stats->ac_flag |= AFORK;
	}
	if (tsk->flags & PF_SUPERPRIV)
		stats->ac_flag |= ASU;
	if (tsk->flags & PF_DUMPCORE)
		stats->ac_flag |= ACORE;
	if (tsk->flags & PF_SIGNALED)
		stats->ac_flag |= AXSIG;
	stats->ac_nice	 = FUNC15(tsk);
	stats->ac_sched	 = tsk->policy;
	stats->ac_pid	 = FUNC16(tsk, pid_ns);
	FUNC10();
	tcred = FUNC1(tsk);
	stats->ac_uid	 = FUNC5(user_ns, tcred->uid);
	stats->ac_gid	 = FUNC4(user_ns, tcred->gid);
	stats->ac_ppid	 = FUNC8(tsk) ?
		FUNC17(FUNC9(tsk->real_parent), pid_ns) : 0;
	FUNC11();

	FUNC13(tsk, &utime, &stime);
	stats->ac_utime = FUNC2(utime, NSEC_PER_USEC);
	stats->ac_stime = FUNC2(stime, NSEC_PER_USEC);

	FUNC14(tsk, &utimescaled, &stimescaled);
	stats->ac_utimescaled = FUNC2(utimescaled, NSEC_PER_USEC);
	stats->ac_stimescaled = FUNC2(stimescaled, NSEC_PER_USEC);

	stats->ac_minflt = tsk->min_flt;
	stats->ac_majflt = tsk->maj_flt;

	FUNC12(stats->ac_comm, tsk->comm, sizeof(stats->ac_comm));
}