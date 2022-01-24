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
struct cred {scalar_t__ user_ns; int /*<<< orphan*/  cap_permitted; int /*<<< orphan*/  cap_effective; } ;
typedef  int /*<<< orphan*/  kernel_cap_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_PTRACE ; 
 int EPERM ; 
 unsigned int PTRACE_MODE_FSCREDS ; 
 struct cred* FUNC0 (struct task_struct*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 struct cred* FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(struct task_struct *child, unsigned int mode)
{
	int ret = 0;
	const struct cred *cred, *child_cred;
	const kernel_cap_t *caller_caps;

	FUNC4();
	cred = FUNC2();
	child_cred = FUNC0(child);
	if (mode & PTRACE_MODE_FSCREDS)
		caller_caps = &cred->cap_effective;
	else
		caller_caps = &cred->cap_permitted;
	if (cred->user_ns == child_cred->user_ns &&
	    FUNC1(child_cred->cap_permitted, *caller_caps))
		goto out;
	if (FUNC3(child_cred->user_ns, CAP_SYS_PTRACE))
		goto out;
	ret = -EPERM;
out:
	FUNC5();
	return ret;
}