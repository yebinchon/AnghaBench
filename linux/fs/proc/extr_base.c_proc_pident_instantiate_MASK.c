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
struct proc_inode {int /*<<< orphan*/  op; } ;
struct pid_entry {int /*<<< orphan*/  op; scalar_t__ fop; scalar_t__ iop; int /*<<< orphan*/  mode; } ;
struct inode {scalar_t__ i_fop; scalar_t__ i_op; int /*<<< orphan*/  i_mode; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 struct proc_inode* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC4 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  pid_dentry_operations ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,struct inode*) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ,struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int) ; 

__attribute__((used)) static struct dentry *FUNC8(struct dentry *dentry,
	struct task_struct *task, const void *ptr)
{
	const struct pid_entry *p = ptr;
	struct inode *inode;
	struct proc_inode *ei;

	inode = FUNC6(dentry->d_sb, task, p->mode);
	if (!inode)
		return FUNC0(-ENOENT);

	ei = FUNC1(inode);
	if (FUNC2(inode->i_mode))
		FUNC7(inode, 2);	/* Use getattr to fix if necessary */
	if (p->iop)
		inode->i_op = p->iop;
	if (p->fop)
		inode->i_fop = p->fop;
	ei->op = p->op;
	FUNC5(task, inode);
	FUNC3(dentry, &pid_dentry_operations);
	return FUNC4(inode, dentry);
}