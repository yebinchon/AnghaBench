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
struct inode {int /*<<< orphan*/  i_flags; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  S_IMMUTABLE ; 
 int S_IRUGO ; 
 int S_IXUGO ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC2 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  nlink_tgid ; 
 int /*<<< orphan*/  pid_dentry_operations ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,struct inode*) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ,struct task_struct*,int) ; 
 int /*<<< orphan*/  proc_tgid_base_inode_operations ; 
 int /*<<< orphan*/  proc_tgid_base_operations ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dentry *FUNC6(struct dentry * dentry,
				   struct task_struct *task, const void *ptr)
{
	struct inode *inode;

	inode = FUNC4(dentry->d_sb, task, S_IFDIR | S_IRUGO | S_IXUGO);
	if (!inode)
		return FUNC0(-ENOENT);

	inode->i_op = &proc_tgid_base_inode_operations;
	inode->i_fop = &proc_tgid_base_operations;
	inode->i_flags|=S_IMMUTABLE;

	FUNC5(inode, nlink_tgid);
	FUNC3(task, inode);

	FUNC1(dentry, &pid_dentry_operations);
	return FUNC2(inode, dentry);
}