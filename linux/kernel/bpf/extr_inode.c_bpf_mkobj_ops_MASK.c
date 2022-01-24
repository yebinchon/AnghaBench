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
typedef  int /*<<< orphan*/  umode_t ;
struct inode_operations {int dummy; } ;
struct inode {void* i_private; struct file_operations const* i_fop; struct inode_operations const* i_op; int /*<<< orphan*/  i_sb; } ;
struct file_operations {int dummy; } ;
struct dentry {TYPE_1__* d_parent; } ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*,struct inode*) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dentry *dentry, umode_t mode, void *raw,
			 const struct inode_operations *iops,
			 const struct file_operations *fops)
{
	struct inode *dir = dentry->d_parent->d_inode;
	struct inode *inode = FUNC3(dir->i_sb, dir, mode);
	if (FUNC0(inode))
		return FUNC1(inode);

	inode->i_op = iops;
	inode->i_fop = fops;
	inode->i_private = raw;

	FUNC2(dentry, inode, dir);
	return 0;
}