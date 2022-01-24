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
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_mode; } ;
struct f2fs_sb_info {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  WHITEOUT_DEV ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int FUNC5 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  f2fs_dblock_aops ; 
 int FUNC9 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  f2fs_file_inode_operations ; 
 int /*<<< orphan*/  f2fs_file_operations ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*) ; 
 struct inode* FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  f2fs_special_inode_operations ; 
 int /*<<< orphan*/  FUNC15 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 

__attribute__((used)) static int FUNC18(struct inode *dir, struct dentry *dentry,
					umode_t mode, struct inode **whiteout)
{
	struct f2fs_sb_info *sbi = FUNC0(dir);
	struct inode *inode;
	int err;

	err = FUNC4(dir);
	if (err)
		return err;

	inode = FUNC13(dir, mode);
	if (FUNC1(inode))
		return FUNC2(inode);

	if (whiteout) {
		FUNC16(inode, inode->i_mode, WHITEOUT_DEV);
		inode->i_op = &f2fs_special_inode_operations;
	} else {
		inode->i_op = &f2fs_file_inode_operations;
		inode->i_fop = &f2fs_file_operations;
		inode->i_mapping->a_ops = &f2fs_dblock_aops;
	}

	FUNC12(sbi);
	err = FUNC5(sbi);
	if (err)
		goto out;

	err = FUNC9(inode, dir);
	if (err)
		goto release_out;

	/*
	 * add this non-linked tmpfile to orphan list, in this way we could
	 * remove all unused data of tmpfile after abnormal power-off.
	 */
	FUNC6(inode);
	FUNC7(sbi, inode->i_ino);

	if (whiteout) {
		FUNC11(inode, false);
		*whiteout = inode;
	} else {
		FUNC3(dentry, inode);
	}
	/* link_count was changed by d_tmpfile as well. */
	FUNC15(sbi);
	FUNC17(inode);

	FUNC8(sbi, true);
	return 0;

release_out:
	FUNC14(sbi);
out:
	FUNC10(inode);
	return err;
}