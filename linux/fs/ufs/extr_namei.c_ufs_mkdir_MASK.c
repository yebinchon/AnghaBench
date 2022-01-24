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
typedef  int umode_t ;
struct inode {TYPE_1__* i_mapping; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  ufs_aops ; 
 int /*<<< orphan*/  ufs_dir_inode_operations ; 
 int /*<<< orphan*/  ufs_dir_operations ; 
 int FUNC7 (struct inode*,struct inode*) ; 
 struct inode* FUNC8 (struct inode*,int) ; 

__attribute__((used)) static int FUNC9(struct inode * dir, struct dentry * dentry, umode_t mode)
{
	struct inode * inode;
	int err;

	FUNC5(dir);

	inode = FUNC8(dir, S_IFDIR|mode);
	err = FUNC1(inode);
	if (FUNC0(inode))
		goto out_dir;

	inode->i_op = &ufs_dir_inode_operations;
	inode->i_fop = &ufs_dir_operations;
	inode->i_mapping->a_ops = &ufs_aops;

	FUNC5(inode);

	err = FUNC7(inode, dir);
	if (err)
		goto out_fail;

	err = FUNC6(dentry, inode);
	if (err)
		goto out_fail;

	FUNC2(dentry, inode);
	return 0;

out_fail:
	FUNC4(inode);
	FUNC4(inode);
	FUNC3(inode);
out_dir:
	FUNC4(dir);
	return err;
}