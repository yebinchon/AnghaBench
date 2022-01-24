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
struct cred {scalar_t__ user_ns; int /*<<< orphan*/  cap_permitted; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_PTRACE ; 
 int EPERM ; 
 struct cred* FUNC0 (struct task_struct*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cred* FUNC2 () ; 
 scalar_t__ FUNC3 (struct task_struct*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(struct task_struct *parent)
{
	int ret = 0;
	const struct cred *cred, *child_cred;

	FUNC4();
	cred = FUNC0(parent);
	child_cred = FUNC2();
	if (cred->user_ns == child_cred->user_ns &&
	    FUNC1(child_cred->cap_permitted, cred->cap_permitted))
		goto out;
	if (FUNC3(parent, child_cred->user_ns, CAP_SYS_PTRACE))
		goto out;
	ret = -EPERM;
out:
	FUNC5();
	return ret;
}