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
struct cred {int /*<<< orphan*/  user_ns; int /*<<< orphan*/  gid; int /*<<< orphan*/  sgid; int /*<<< orphan*/  egid; int /*<<< orphan*/  uid; int /*<<< orphan*/  suid; int /*<<< orphan*/  euid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_RESOURCE ; 
 int EPERM ; 
 struct cred* FUNC0 (struct task_struct*) ; 
 struct task_struct* current ; 
 struct cred* FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct cred const*,struct cred const*,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct task_struct *task,
				    unsigned int flags)
{
	const struct cred *cred = FUNC1(), *tcred;
	bool id_match;

	if (current == task)
		return 0;

	tcred = FUNC0(task);
	id_match = (FUNC5(cred->uid, tcred->euid) &&
		    FUNC5(cred->uid, tcred->suid) &&
		    FUNC5(cred->uid, tcred->uid)  &&
		    FUNC2(cred->gid, tcred->egid) &&
		    FUNC2(cred->gid, tcred->sgid) &&
		    FUNC2(cred->gid, tcred->gid));
	if (!id_match && !FUNC3(tcred->user_ns, CAP_SYS_RESOURCE))
		return -EPERM;

	return FUNC4(cred, tcred, flags);
}