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
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct f2fs_sb_info {int /*<<< orphan*/  sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int EIO ; 
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FI_INC_LINK ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int FUNC6 (struct inode*) ; 
 int FUNC7 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  f2fs_dblock_aops ; 
 int /*<<< orphan*/  f2fs_dir_inode_operations ; 
 int /*<<< orphan*/  f2fs_dir_operations ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*) ; 
 struct inode* FUNC13 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct inode *dir, struct dentry *dentry, umode_t mode)
{
	struct f2fs_sb_info *sbi = FUNC0(dir);
	struct inode *inode;
	int err;

	if (FUNC18(FUNC10(sbi)))
		return -EIO;

	err = FUNC6(dir);
	if (err)
		return err;

	inode = FUNC13(dir, S_IFDIR | mode);
	if (FUNC2(inode))
		return FUNC3(inode);

	inode->i_op = &f2fs_dir_inode_operations;
	inode->i_fop = &f2fs_dir_operations;
	inode->i_mapping->a_ops = &f2fs_dblock_aops;
	FUNC16(inode);

	FUNC17(inode, FI_INC_LINK);
	FUNC12(sbi);
	err = FUNC7(dentry, inode);
	if (err)
		goto out_fail;
	FUNC15(sbi);

	FUNC8(sbi, inode->i_ino);

	FUNC5(dentry, inode);

	if (FUNC1(dir))
		FUNC14(sbi->sb, 1);

	FUNC9(sbi, true);
	return 0;

out_fail:
	FUNC4(inode, FI_INC_LINK);
	FUNC11(inode);
	return err;
}