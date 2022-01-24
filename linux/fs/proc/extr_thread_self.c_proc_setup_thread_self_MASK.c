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
struct super_block {int /*<<< orphan*/  s_root; } ;
struct pid_namespace {struct dentry* proc_thread_self; } ;
struct inode {int i_mode; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 struct inode* FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 struct pid_namespace* FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  proc_thread_self_inode_operations ; 
 int /*<<< orphan*/  thread_self_inum ; 

int FUNC10(struct super_block *s)
{
	struct inode *root_inode = FUNC3(s->s_root);
	struct pid_namespace *ns = FUNC9(root_inode);
	struct dentry *thread_self;
	int ret = -ENOMEM;

	FUNC5(root_inode);
	thread_self = FUNC2(s->s_root, "thread-self");
	if (thread_self) {
		struct inode *inode = FUNC7(s);
		if (inode) {
			inode->i_ino = thread_self_inum;
			inode->i_mtime = inode->i_atime = inode->i_ctime = FUNC0(inode);
			inode->i_mode = S_IFLNK | S_IRWXUGO;
			inode->i_uid = GLOBAL_ROOT_UID;
			inode->i_gid = GLOBAL_ROOT_GID;
			inode->i_op = &proc_thread_self_inode_operations;
			FUNC1(thread_self, inode);
			ret = 0;
		} else {
			FUNC4(thread_self);
		}
	}
	FUNC6(root_inode);

	if (ret)
		FUNC8("proc_fill_super: can't allocate /proc/thread_self\n");
	else
		ns->proc_thread_self = thread_self;

	return ret;
}