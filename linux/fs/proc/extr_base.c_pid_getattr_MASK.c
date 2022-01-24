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
struct pid_namespace {int dummy; } ;
struct path {int /*<<< orphan*/  dentry; } ;
struct kstat {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 int /*<<< orphan*/  HIDEPID_INVISIBLE ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct kstat*) ; 
 int /*<<< orphan*/  FUNC2 (struct pid_namespace*,struct task_struct*,int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct pid_namespace* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC9(const struct path *path, struct kstat *stat,
		u32 request_mask, unsigned int query_flags)
{
	struct inode *inode = FUNC0(path->dentry);
	struct pid_namespace *pid = FUNC5(inode);
	struct task_struct *task;

	FUNC1(inode, stat);

	stat->uid = GLOBAL_ROOT_UID;
	stat->gid = GLOBAL_ROOT_GID;
	FUNC6();
	task = FUNC3(FUNC4(inode), PIDTYPE_PID);
	if (task) {
		if (!FUNC2(pid, task, HIDEPID_INVISIBLE)) {
			FUNC7();
			/*
			 * This doesn't prevent learning whether PID exists,
			 * it only makes getattr() consistent with readdir().
			 */
			return -ENOENT;
		}
		FUNC8(task, inode->i_mode, &stat->uid, &stat->gid);
	}
	FUNC7();
	return 0;
}