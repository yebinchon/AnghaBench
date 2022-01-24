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
struct task_struct {int /*<<< orphan*/  ptracer_cred; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_OPT_NOAUDIT ; 
 int /*<<< orphan*/  CAP_SYS_PTRACE ; 
 struct cred* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct cred const*,struct user_namespace*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC4(struct task_struct *tsk, struct user_namespace *ns)
{
	int ret = 0;  /* An absent tracer adds no restrictions */
	const struct cred *cred;

	FUNC1();
	cred = FUNC0(tsk->ptracer_cred);
	if (cred)
		ret = FUNC3(cred, ns, CAP_SYS_PTRACE,
				       CAP_OPT_NOAUDIT);
	FUNC2();
	return (ret == 0);
}