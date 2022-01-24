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
 int EINVAL ; 
 int EPERM ; 
#define  SIGCONT 128 
 int FUNC0 (int,struct task_struct*) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,struct task_struct*) ; 
 int FUNC3 (struct task_struct*,struct kernel_siginfo*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kernel_siginfo*) ; 
 struct pid* FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(int sig, struct kernel_siginfo *info,
				 struct task_struct *t)
{
	struct pid *sid;
	int error;

	if (!FUNC6(sig))
		return -EINVAL;

	if (!FUNC4(info))
		return 0;

	error = FUNC0(sig, t); /* Let audit system see the signal */
	if (error)
		return error;

	if (!FUNC2(current, t) &&
	    !FUNC1(t)) {
		switch (sig) {
		case SIGCONT:
			sid = FUNC5(t);
			/*
			 * We don't return the error if sid == NULL. The
			 * task was unhashed, the caller must notice this.
			 */
			if (!sid || sid == FUNC5(current))
				break;
			/* fall through */
		default:
			return -EPERM;
		}
	}

	return FUNC3(t, info, sig, NULL);
}