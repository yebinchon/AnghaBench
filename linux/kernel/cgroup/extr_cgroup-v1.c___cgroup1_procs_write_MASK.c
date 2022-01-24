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
struct kernfs_open_file {int /*<<< orphan*/  kn; } ;
struct cred {int /*<<< orphan*/  suid; int /*<<< orphan*/  euid; int /*<<< orphan*/  uid; } ;
struct cgroup {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EACCES ; 
 int ENODEV ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 int FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct cgroup*,struct task_struct*,int) ; 
 struct cgroup* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 struct task_struct* FUNC5 (char*,int) ; 
 struct cred* FUNC6 () ; 
 struct cred* FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC10(struct kernfs_open_file *of,
				     char *buf, size_t nbytes, loff_t off,
				     bool threadgroup)
{
	struct cgroup *cgrp;
	struct task_struct *task;
	const struct cred *cred, *tcred;
	ssize_t ret;

	cgrp = FUNC2(of->kn, false);
	if (!cgrp)
		return -ENODEV;

	task = FUNC5(buf, threadgroup);
	ret = FUNC0(task);
	if (ret)
		goto out_unlock;

	/*
	 * Even if we're attaching all tasks in the thread group, we only
	 * need to check permissions on one of them.
	 */
	cred = FUNC6();
	tcred = FUNC7(task);
	if (!FUNC9(cred->euid, GLOBAL_ROOT_UID) &&
	    !FUNC9(cred->euid, tcred->uid) &&
	    !FUNC9(cred->euid, tcred->suid))
		ret = -EACCES;
	FUNC8(tcred);
	if (ret)
		goto out_finish;

	ret = FUNC1(cgrp, task, threadgroup);

out_finish:
	FUNC4(task);
out_unlock:
	FUNC3(of->kn);

	return ret ?: nbytes;
}