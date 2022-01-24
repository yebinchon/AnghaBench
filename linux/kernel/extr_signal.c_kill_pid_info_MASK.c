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
struct task_struct {int dummy; } ;
struct pid {int dummy; } ;
struct kernel_siginfo {int dummy; } ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 int /*<<< orphan*/  PIDTYPE_TGID ; 
 int FUNC0 (int,struct kernel_siginfo*,struct task_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct task_struct* FUNC2 (struct pid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(int sig, struct kernel_siginfo *info, struct pid *pid)
{
	int error = -ESRCH;
	struct task_struct *p;

	for (;;) {
		FUNC3();
		p = FUNC2(pid, PIDTYPE_PID);
		if (p)
			error = FUNC0(sig, info, p, PIDTYPE_TGID);
		FUNC4();
		if (FUNC1(!p || error != -ESRCH))
			return error;

		/*
		 * The task was unhashed in between, try again.  If it
		 * is dead, pid_task() will return NULL, if we race with
		 * de_thread() it will find the new leader.
		 */
	}
}