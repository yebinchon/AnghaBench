#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct pid_namespace {int dummy; } ;
struct dentry {TYPE_1__* d_sb; int /*<<< orphan*/  d_name; } ;
struct TYPE_2__ {struct pid_namespace* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC1 (unsigned int,struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 struct dentry* FUNC4 (struct dentry*,struct task_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

struct dentry *FUNC8(struct dentry *dentry, unsigned int flags)
{
	struct task_struct *task;
	unsigned tgid;
	struct pid_namespace *ns;
	struct dentry *result = FUNC0(-ENOENT);

	tgid = FUNC3(&dentry->d_name);
	if (tgid == ~0U)
		goto out;

	ns = dentry->d_sb->s_fs_info;
	FUNC6();
	task = FUNC1(tgid, ns);
	if (task)
		FUNC2(task);
	FUNC7();
	if (!task)
		goto out;

	result = FUNC4(dentry, task, NULL);
	FUNC5(task);
out:
	return result;
}