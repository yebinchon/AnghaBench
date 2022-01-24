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
struct inode {int dummy; } ;
struct dentry {TYPE_1__* d_sb; int /*<<< orphan*/  d_name; } ;
struct TYPE_2__ {struct pid_namespace* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC1 (unsigned int,struct pid_namespace*) ; 
 struct task_struct* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 struct dentry* FUNC5 (struct dentry*,struct task_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*,struct task_struct*) ; 

__attribute__((used)) static struct dentry *FUNC10(struct inode *dir, struct dentry * dentry, unsigned int flags)
{
	struct task_struct *task;
	struct task_struct *leader = FUNC2(dir);
	unsigned tid;
	struct pid_namespace *ns;
	struct dentry *result = FUNC0(-ENOENT);

	if (!leader)
		goto out_no_task;

	tid = FUNC4(&dentry->d_name);
	if (tid == ~0U)
		goto out;

	ns = dentry->d_sb->s_fs_info;
	FUNC7();
	task = FUNC1(tid, ns);
	if (task)
		FUNC3(task);
	FUNC8();
	if (!task)
		goto out;
	if (!FUNC9(leader, task))
		goto out_drop_task;

	result = FUNC5(dentry, task, NULL);
out_drop_task:
	FUNC6(task);
out:
	FUNC6(leader);
out_no_task:
	return result;
}