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
typedef  int /*<<< orphan*/  u32 ;
struct task_struct {int dummy; } ;
struct kernel_siginfo {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROCESS__SIGNULL ; 
 int /*<<< orphan*/  SECCLASS_PROCESS ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  selinux_state ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 

__attribute__((used)) static int FUNC5(struct task_struct *p, struct kernel_siginfo *info,
				int sig, const struct cred *cred)
{
	u32 secid;
	u32 perm;

	if (!sig)
		perm = PROCESS__SIGNULL; /* null signal; existence test */
	else
		perm = FUNC3(sig);
	if (!cred)
		secid = FUNC2();
	else
		secid = FUNC1(cred);
	return FUNC0(&selinux_state,
			    secid, FUNC4(p), SECCLASS_PROCESS, perm, NULL);
}