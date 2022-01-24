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
struct proc_inode {int /*<<< orphan*/  fd; } ;
struct inode {int /*<<< orphan*/ * i_fop; } ;
struct fd_data {int /*<<< orphan*/  fd; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 struct proc_inode* FUNC1 (struct inode*) ; 
 int S_IFREG ; 
 int S_IRUSR ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC3 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  proc_fdinfo_file_operations ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ,struct task_struct*,int) ; 
 int /*<<< orphan*/  tid_fd_dentry_operations ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dentry *FUNC6(struct dentry *dentry,
	struct task_struct *task, const void *ptr)
{
	const struct fd_data *data = ptr;
	struct proc_inode *ei;
	struct inode *inode;

	inode = FUNC4(dentry->d_sb, task, S_IFREG | S_IRUSR);
	if (!inode)
		return FUNC0(-ENOENT);

	ei = FUNC1(inode);
	ei->fd = data->fd;

	inode->i_fop = &proc_fdinfo_file_operations;
	FUNC5(task, inode, 0);

	FUNC2(dentry, &tid_fd_dentry_operations);
	return FUNC3(inode, dentry);
}