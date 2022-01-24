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
struct task_struct {scalar_t__ exit_state; int /*<<< orphan*/  exit_signal; struct task_struct* group_leader; } ;
struct TYPE_4__ {TYPE_1__* user; } ;
struct TYPE_3__ {int /*<<< orphan*/  processes; } ;

/* Variables and functions */
 scalar_t__ EXIT_DEAD ; 
 scalar_t__ EXIT_ZOMBIE ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 TYPE_2__* FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int FUNC4 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 scalar_t__ FUNC11 (struct task_struct*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void FUNC15(struct task_struct *p)
{
	struct task_struct *leader;
	int zap_leader;
repeat:
	/* don't need to get the RCU readlock here - the process is dead and
	 * can't be modifying its own credentials. But shut RCU-lockdep up */
	FUNC8();
	FUNC2(&FUNC1(p)->user->processes);
	FUNC9();

	FUNC5(p);
	FUNC3(p);

	FUNC13(&tasklist_lock);
	FUNC6(p);
	FUNC0(p);

	/*
	 * If we are the last non-leader member of the thread
	 * group, and the leader is zombie, then notify the
	 * group leader's parent process. (if it wants notification.)
	 */
	zap_leader = 0;
	leader = p->group_leader;
	if (leader != p && FUNC11(leader)
			&& leader->exit_state == EXIT_ZOMBIE) {
		/*
		 * If we were the last child thread and the leader has
		 * exited already, and the leader's parent ignores SIGCHLD,
		 * then we are the one who should release the leader.
		 */
		zap_leader = FUNC4(leader, leader->exit_signal);
		if (zap_leader)
			leader->exit_state = EXIT_DEAD;
	}

	FUNC14(&tasklist_lock);
	FUNC10(p);
	FUNC7(p);

	p = leader;
	if (FUNC12(zap_leader))
		goto repeat;
}