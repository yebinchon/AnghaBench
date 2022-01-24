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
struct nilfs_transaction_info {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
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
 int /*<<< orphan*/  nilfs_aops ; 
 int /*<<< orphan*/  nilfs_dir_inode_operations ; 
 int /*<<< orphan*/  nilfs_dir_operations ; 
 int FUNC7 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 struct inode* FUNC9 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct nilfs_transaction_info*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 

__attribute__((used)) static int FUNC14(struct inode *dir, struct dentry *dentry, umode_t mode)
{
	struct inode *inode;
	struct nilfs_transaction_info ti;
	int err;

	err = FUNC11(dir->i_sb, &ti, 1);
	if (err)
		return err;

	FUNC4(dir);

	inode = FUNC9(dir, S_IFDIR | mode);
	err = FUNC1(inode);
	if (FUNC0(inode))
		goto out_dir;

	inode->i_op = &nilfs_dir_inode_operations;
	inode->i_fop = &nilfs_dir_operations;
	inode->i_mapping->a_ops = &nilfs_aops;

	FUNC4(inode);

	err = FUNC7(inode, dir);
	if (err)
		goto out_fail;

	err = FUNC6(dentry, inode);
	if (err)
		goto out_fail;

	FUNC8(inode);
	FUNC2(dentry, inode);
out:
	if (!err)
		err = FUNC12(dir->i_sb);
	else
		FUNC10(dir->i_sb);

	return err;

out_fail:
	FUNC3(inode);
	FUNC3(inode);
	FUNC8(inode);
	FUNC13(inode);
	FUNC5(inode);
out_dir:
	FUNC3(dir);
	FUNC8(dir);
	goto out;
}