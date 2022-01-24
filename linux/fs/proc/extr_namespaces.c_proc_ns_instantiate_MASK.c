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
struct proc_ns_operations {int dummy; } ;
struct proc_inode {struct proc_ns_operations const* ns_ops; } ;
struct inode {int /*<<< orphan*/ * i_op; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 struct proc_inode* FUNC1 (struct inode*) ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC3 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  pid_dentry_operations ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,struct inode*) ; 
 int /*<<< orphan*/  proc_ns_link_inode_operations ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ,struct task_struct*,int) ; 

__attribute__((used)) static struct dentry *FUNC6(struct dentry *dentry,
	struct task_struct *task, const void *ptr)
{
	const struct proc_ns_operations *ns_ops = ptr;
	struct inode *inode;
	struct proc_inode *ei;

	inode = FUNC5(dentry->d_sb, task, S_IFLNK | S_IRWXUGO);
	if (!inode)
		return FUNC0(-ENOENT);

	ei = FUNC1(inode);
	inode->i_op = &proc_ns_link_inode_operations;
	ei->ns_ops = ns_ops;
	FUNC4(task, inode);

	FUNC2(dentry, &pid_dentry_operations);
	return FUNC3(inode, dentry);
}