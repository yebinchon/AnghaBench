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
struct kernel_siginfo {int si_signo; int si_errno; int /*<<< orphan*/  si_pid; int /*<<< orphan*/  si_code; } ;
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  sigval_t ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int ESRCH ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 int /*<<< orphan*/  PIDTYPE_TGID ; 
 int /*<<< orphan*/  SI_ASYNCIO ; 
 int FUNC0 (int,struct kernel_siginfo*,struct task_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kernel_siginfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct cred const*,struct task_struct*) ; 
 scalar_t__ FUNC3 (struct task_struct*,unsigned long*) ; 
 struct task_struct* FUNC4 (struct pid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct task_struct*,struct kernel_siginfo*,int,struct cred const*) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int FUNC10(int sig, int errno, sigval_t addr,
			 struct pid *pid, const struct cred *cred)
{
	struct kernel_siginfo info;
	struct task_struct *p;
	unsigned long flags;
	int ret = -EINVAL;

	FUNC1(&info);
	info.si_signo = sig;
	info.si_errno = errno;
	info.si_code = SI_ASYNCIO;
	*((sigval_t *)&info.si_pid) = addr;

	if (!FUNC9(sig))
		return ret;

	FUNC5();
	p = FUNC4(pid, PIDTYPE_PID);
	if (!p) {
		ret = -ESRCH;
		goto out_unlock;
	}
	if (!FUNC2(cred, p)) {
		ret = -EPERM;
		goto out_unlock;
	}
	ret = FUNC7(p, &info, sig, cred);
	if (ret)
		goto out_unlock;

	if (sig) {
		if (FUNC3(p, &flags)) {
			ret = FUNC0(sig, &info, p, PIDTYPE_TGID, false);
			FUNC8(p, &flags);
		} else
			ret = -ESRCH;
	}
out_unlock:
	FUNC6();
	return ret;
}