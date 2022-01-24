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
struct inode {TYPE_1__* i_mapping; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  ufs_aops ; 
 int /*<<< orphan*/  ufs_file_inode_operations ; 
 int /*<<< orphan*/  ufs_file_operations ; 
 struct inode* FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5 (struct inode * dir, struct dentry * dentry, umode_t mode,
		bool excl)
{
	struct inode *inode;

	inode = FUNC4(dir, mode);
	if (FUNC0(inode))
		return FUNC1(inode);

	inode->i_op = &ufs_file_inode_operations;
	inode->i_fop = &ufs_file_operations;
	inode->i_mapping->a_ops = &ufs_aops;
	FUNC2(inode);
	return FUNC3(dentry, inode);
}