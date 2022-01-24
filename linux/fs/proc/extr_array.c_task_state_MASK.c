#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct user_namespace {int dummy; } ;
struct task_struct {scalar_t__ files; TYPE_1__* fs; int /*<<< orphan*/  real_parent; } ;
struct seq_file {int dummy; } ;
struct pid_namespace {int level; } ;
struct pid {int level; TYPE_2__* numbers; } ;
struct group_info {int ngroups; int /*<<< orphan*/ * gid; } ;
struct cred {struct group_info* group_info; int /*<<< orphan*/  fsgid; int /*<<< orphan*/  sgid; int /*<<< orphan*/  egid; int /*<<< orphan*/  gid; int /*<<< orphan*/  fsuid; int /*<<< orphan*/  suid; int /*<<< orphan*/  euid; int /*<<< orphan*/  uid; } ;
typedef  unsigned int pid_t ;
struct TYPE_6__ {unsigned int max_fds; } ;
struct TYPE_5__ {struct pid_namespace* ns; } ;
struct TYPE_4__ {int umask; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (scalar_t__) ; 
 unsigned int FUNC1 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 struct cred* FUNC3 (struct task_struct*) ; 
 char* FUNC4 (struct task_struct*) ; 
 scalar_t__ FUNC5 (struct task_struct*) ; 
 unsigned int FUNC6 (struct pid*,struct pid_namespace*) ; 
 struct task_struct* FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct cred const*) ; 
 struct task_struct* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct seq_file*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC15 (struct seq_file*,char*) ; 
 struct user_namespace* FUNC16 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC17 (struct task_struct*) ; 
 unsigned int FUNC18 (struct task_struct*) ; 
 unsigned int FUNC19 (struct task_struct*,struct pid_namespace*) ; 
 unsigned int FUNC20 (struct task_struct*,struct pid_namespace*) ; 
 unsigned int FUNC21 (struct task_struct*,struct pid_namespace*) ; 
 unsigned int FUNC22 (struct task_struct*,struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC23 (struct task_struct*) ; 

__attribute__((used)) static inline void FUNC24(struct seq_file *m, struct pid_namespace *ns,
				struct pid *pid, struct task_struct *p)
{
	struct user_namespace *user_ns = FUNC16(m);
	struct group_info *group_info;
	int g, umask = -1;
	struct task_struct *tracer;
	const struct cred *cred;
	pid_t ppid, tpid = 0, tgid, ngid;
	unsigned int max_fds = 0;

	FUNC10();
	ppid = FUNC5(p) ?
		FUNC22(FUNC9(p->real_parent), ns) : 0;

	tracer = FUNC7(p);
	if (tracer)
		tpid = FUNC20(tracer, ns);

	tgid = FUNC22(p, ns);
	ngid = FUNC18(p);
	cred = FUNC3(p);

	FUNC17(p);
	if (p->fs)
		umask = p->fs->umask;
	if (p->files)
		max_fds = FUNC0(p->files)->max_fds;
	FUNC23(p);
	FUNC11();

	if (umask >= 0)
		FUNC12(m, "Umask:\t%#04o\n", umask);
	FUNC15(m, "State:\t");
	FUNC15(m, FUNC4(p));

	FUNC13(m, "\nTgid:\t", tgid);
	FUNC13(m, "\nNgid:\t", ngid);
	FUNC13(m, "\nPid:\t", FUNC6(pid, ns));
	FUNC13(m, "\nPPid:\t", ppid);
	FUNC13(m, "\nTracerPid:\t", tpid);
	FUNC13(m, "\nUid:\t", FUNC2(user_ns, cred->uid));
	FUNC13(m, "\t", FUNC2(user_ns, cred->euid));
	FUNC13(m, "\t", FUNC2(user_ns, cred->suid));
	FUNC13(m, "\t", FUNC2(user_ns, cred->fsuid));
	FUNC13(m, "\nGid:\t", FUNC1(user_ns, cred->gid));
	FUNC13(m, "\t", FUNC1(user_ns, cred->egid));
	FUNC13(m, "\t", FUNC1(user_ns, cred->sgid));
	FUNC13(m, "\t", FUNC1(user_ns, cred->fsgid));
	FUNC13(m, "\nFDSize:\t", max_fds);

	FUNC15(m, "\nGroups:\t");
	group_info = cred->group_info;
	for (g = 0; g < group_info->ngroups; g++)
		FUNC13(m, g ? " " : "",
				FUNC1(user_ns, group_info->gid[g]));
	FUNC8(cred);
	/* Trailing space shouldn't have been added in the first place. */
	FUNC14(m, ' ');

#ifdef CONFIG_PID_NS
	seq_puts(m, "\nNStgid:");
	for (g = ns->level; g <= pid->level; g++)
		seq_put_decimal_ull(m, "\t", task_tgid_nr_ns(p, pid->numbers[g].ns));
	seq_puts(m, "\nNSpid:");
	for (g = ns->level; g <= pid->level; g++)
		seq_put_decimal_ull(m, "\t", task_pid_nr_ns(p, pid->numbers[g].ns));
	seq_puts(m, "\nNSpgid:");
	for (g = ns->level; g <= pid->level; g++)
		seq_put_decimal_ull(m, "\t", task_pgrp_nr_ns(p, pid->numbers[g].ns));
	seq_puts(m, "\nNSsid:");
	for (g = ns->level; g <= pid->level; g++)
		seq_put_decimal_ull(m, "\t", task_session_nr_ns(p, pid->numbers[g].ns));
#endif
	FUNC14(m, '\n');
}