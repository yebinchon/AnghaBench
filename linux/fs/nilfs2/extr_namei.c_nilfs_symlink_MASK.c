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
struct super_block {unsigned int s_blocksize; } ;
struct nilfs_transaction_info {int dummy; } ;
struct inode {struct super_block* i_sb; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_op; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int S_IFLNK ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  nilfs_aops ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 struct inode* FUNC7 (struct inode*,int) ; 
 int /*<<< orphan*/  nilfs_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 
 int FUNC9 (struct super_block*,struct nilfs_transaction_info*,int) ; 
 int FUNC10 (struct super_block*) ; 
 int FUNC11 (struct inode*,char const*,unsigned int) ; 
 int FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 

__attribute__((used)) static int FUNC14(struct inode *dir, struct dentry *dentry,
			 const char *symname)
{
	struct nilfs_transaction_info ti;
	struct super_block *sb = dir->i_sb;
	unsigned int l = FUNC12(symname) + 1;
	struct inode *inode;
	int err;

	if (l > sb->s_blocksize)
		return -ENAMETOOLONG;

	err = FUNC9(dir->i_sb, &ti, 1);
	if (err)
		return err;

	inode = FUNC7(dir, S_IFLNK | 0777);
	err = FUNC1(inode);
	if (FUNC0(inode))
		goto out;

	/* slow symlink */
	inode->i_op = &nilfs_symlink_inode_operations;
	FUNC3(inode);
	inode->i_mapping->a_ops = &nilfs_aops;
	err = FUNC11(inode, symname, l);
	if (err)
		goto out_fail;

	/* mark_inode_dirty(inode); */
	/* page_symlink() do this */

	err = FUNC5(dentry, inode);
out:
	if (!err)
		err = FUNC10(dir->i_sb);
	else
		FUNC8(dir->i_sb);

	return err;

out_fail:
	FUNC2(inode);
	FUNC6(inode);
	FUNC13(inode);
	FUNC4(inode);
	goto out;
}