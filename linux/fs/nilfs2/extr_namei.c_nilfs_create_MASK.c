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
struct nilfs_transaction_info {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  nilfs_aops ; 
 int /*<<< orphan*/  nilfs_file_inode_operations ; 
 int /*<<< orphan*/  nilfs_file_operations ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct nilfs_transaction_info*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct inode *dir, struct dentry *dentry, umode_t mode,
			bool excl)
{
	struct inode *inode;
	struct nilfs_transaction_info ti;
	int err;

	err = FUNC6(dir->i_sb, &ti, 1);
	if (err)
		return err;
	inode = FUNC4(dir, mode);
	err = FUNC1(inode);
	if (!FUNC0(inode)) {
		inode->i_op = &nilfs_file_inode_operations;
		inode->i_fop = &nilfs_file_operations;
		inode->i_mapping->a_ops = &nilfs_aops;
		FUNC3(inode);
		err = FUNC2(dentry, inode);
	}
	if (!err)
		err = FUNC7(dir->i_sb);
	else
		FUNC5(dir->i_sb);

	return err;
}