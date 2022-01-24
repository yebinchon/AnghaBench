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
struct inode {int /*<<< orphan*/  i_ctime; } ;
struct f2fs_sb_info {int /*<<< orphan*/  sb; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_projid; } ;

/* Variables and functions */
 int EIO ; 
 int ENOSPC ; 
 int EXDEV ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FI_INC_LINK ; 
 int /*<<< orphan*/  FI_PROJ_INHERIT ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*,struct inode*) ; 
 int FUNC7 (struct inode*) ; 
 int FUNC8 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct f2fs_sb_info*) ; 
 int FUNC15 (struct dentry*,struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 scalar_t__ FUNC18 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct dentry *old_dentry, struct inode *dir,
		struct dentry *dentry)
{
	struct inode *inode = FUNC5(old_dentry);
	struct f2fs_sb_info *sbi = FUNC1(dir);
	int err;

	if (FUNC21(FUNC10(sbi)))
		return -EIO;
	if (!FUNC11(sbi))
		return -ENOSPC;

	err = FUNC15(old_dentry, dir, dentry);
	if (err)
		return err;

	if (FUNC18(dir, FI_PROJ_INHERIT) &&
			(!FUNC19(FUNC0(dir)->i_projid,
			FUNC0(old_dentry->d_inode)->i_projid)))
		return -EXDEV;

	err = FUNC7(dir);
	if (err)
		return err;

	FUNC9(sbi, true);

	inode->i_ctime = FUNC4(inode);
	FUNC16(inode);

	FUNC20(inode, FI_INC_LINK);
	FUNC12(sbi);
	err = FUNC8(dentry, inode);
	if (err)
		goto out;
	FUNC14(sbi);

	FUNC6(dentry, inode);

	if (FUNC2(dir))
		FUNC13(sbi->sb, 1);
	return 0;
out:
	FUNC3(inode, FI_INC_LINK);
	FUNC17(inode);
	FUNC14(sbi);
	return err;
}