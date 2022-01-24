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
struct inode {TYPE_1__* i_mapping; int /*<<< orphan*/  i_sb; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NOBH ; 
 int FUNC1 (struct inode*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  ext2_aops ; 
 int /*<<< orphan*/  ext2_dir_inode_operations ; 
 int /*<<< orphan*/  ext2_dir_operations ; 
 int FUNC6 (struct inode*,struct inode*) ; 
 struct inode* FUNC7 (struct inode*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ext2_nobh_aops ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct inode * dir, struct dentry * dentry, umode_t mode)
{
	struct inode * inode;
	int err;

	err = FUNC4(dir);
	if (err)
		return err;

	FUNC9(dir);

	inode = FUNC7(dir, S_IFDIR | mode, &dentry->d_name);
	err = FUNC1(inode);
	if (FUNC0(inode))
		goto out_dir;

	inode->i_op = &ext2_dir_inode_operations;
	inode->i_fop = &ext2_dir_operations;
	if (FUNC10(inode->i_sb, NOBH))
		inode->i_mapping->a_ops = &ext2_nobh_aops;
	else
		inode->i_mapping->a_ops = &ext2_aops;

	FUNC9(inode);

	err = FUNC6(inode, dir);
	if (err)
		goto out_fail;

	err = FUNC5(dentry, inode);
	if (err)
		goto out_fail;

	FUNC2(dentry, inode);
out:
	return err;

out_fail:
	FUNC8(inode);
	FUNC8(inode);
	FUNC3(inode);
out_dir:
	FUNC8(dir);
	goto out;
}