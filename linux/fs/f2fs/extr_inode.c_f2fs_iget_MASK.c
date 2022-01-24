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
struct super_block {int dummy; } ;
struct inode {int i_state; int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_op; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_fop; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 unsigned long FUNC1 (struct f2fs_sb_info*) ; 
 unsigned long FUNC2 (struct f2fs_sb_info*) ; 
 struct f2fs_sb_info* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int I_NEW ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  f2fs_dblock_aops ; 
 int /*<<< orphan*/  f2fs_dir_inode_operations ; 
 int /*<<< orphan*/  f2fs_dir_operations ; 
 int /*<<< orphan*/  f2fs_encrypted_symlink_inode_operations ; 
 int /*<<< orphan*/  f2fs_file_inode_operations ; 
 int /*<<< orphan*/  f2fs_file_operations ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  f2fs_meta_aops ; 
 int /*<<< orphan*/  f2fs_node_aops ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  f2fs_special_inode_operations ; 
 int /*<<< orphan*/  f2fs_symlink_inode_operations ; 
 scalar_t__ FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 struct inode* FUNC16 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*) ; 

struct inode *FUNC23(struct super_block *sb, unsigned long ino)
{
	struct f2fs_sb_info *sbi = FUNC3(sb);
	struct inode *inode;
	int ret = 0;

	inode = FUNC16(sb, ino);
	if (!inode)
		return FUNC0(-ENOMEM);

	if (!(inode->i_state & I_NEW)) {
		FUNC20(inode);
		return inode;
	}
	if (ino == FUNC2(sbi) || ino == FUNC1(sbi))
		goto make_now;

	ret = FUNC11(inode);
	if (ret)
		goto bad_inode;
make_now:
	if (ino == FUNC2(sbi)) {
		inode->i_mapping->a_ops = &f2fs_node_aops;
		FUNC19(inode->i_mapping, GFP_NOFS);
	} else if (ino == FUNC1(sbi)) {
		inode->i_mapping->a_ops = &f2fs_meta_aops;
		FUNC19(inode->i_mapping, GFP_NOFS);
	} else if (FUNC9(inode->i_mode)) {
		inode->i_op = &f2fs_file_inode_operations;
		inode->i_fop = &f2fs_file_operations;
		inode->i_mapping->a_ops = &f2fs_dblock_aops;
	} else if (FUNC6(inode->i_mode)) {
		inode->i_op = &f2fs_dir_inode_operations;
		inode->i_fop = &f2fs_dir_operations;
		inode->i_mapping->a_ops = &f2fs_dblock_aops;
		FUNC18(inode);
	} else if (FUNC8(inode->i_mode)) {
		if (FUNC14(inode))
			inode->i_op = &f2fs_encrypted_symlink_inode_operations;
		else
			inode->i_op = &f2fs_symlink_inode_operations;
		FUNC18(inode);
		inode->i_mapping->a_ops = &f2fs_dblock_aops;
	} else if (FUNC5(inode->i_mode) || FUNC4(inode->i_mode) ||
			FUNC7(inode->i_mode) || FUNC10(inode->i_mode)) {
		inode->i_op = &f2fs_special_inode_operations;
		FUNC17(inode, inode->i_mode, inode->i_rdev);
	} else {
		ret = -EIO;
		goto bad_inode;
	}
	FUNC13(inode);
	FUNC22(inode);
	FUNC20(inode);
	return inode;

bad_inode:
	FUNC12(inode);
	FUNC15(inode);
	FUNC21(inode, ret);
	return FUNC0(ret);
}