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
struct user_namespace {int dummy; } ;
struct taskstats {int /*<<< orphan*/  nivcsw; int /*<<< orphan*/  nvcsw; int /*<<< orphan*/  version; } ;
struct task_struct {int /*<<< orphan*/  nivcsw; int /*<<< orphan*/  nvcsw; } ;
struct pid_namespace {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASKSTATS_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct user_namespace*,struct pid_namespace*,struct taskstats*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct taskstats*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct taskstats*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct taskstats*,struct task_struct*) ; 

__attribute__((used)) static void FUNC4(struct user_namespace *user_ns,
		       struct pid_namespace *pid_ns,
		       struct task_struct *tsk, struct taskstats *stats)
{
	FUNC2(stats, 0, sizeof(*stats));
	/*
	 * Each accounting subsystem adds calls to its functions to
	 * fill in relevant parts of struct taskstsats as follows
	 *
	 *	per-task-foo(stats, tsk);
	 */

	FUNC1(stats, tsk);

	/* fill in basic acct fields */
	stats->version = TASKSTATS_VERSION;
	stats->nvcsw = tsk->nvcsw;
	stats->nivcsw = tsk->nivcsw;
	FUNC0(user_ns, pid_ns, stats, tsk);

	/* fill in extended acct fields */
	FUNC3(stats, tsk);
}