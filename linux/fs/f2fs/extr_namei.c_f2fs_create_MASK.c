#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int /*<<< orphan*/  i_ino; TYPE_2__* i_mapping; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct f2fs_sb_info {int /*<<< orphan*/  sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef  int /*<<< orphan*/  nid_t ;
struct TYPE_4__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISABLE_EXT_IDENTIFY ; 
 int EIO ; 
 int ENOSPC ; 
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 int FUNC5 (struct inode*) ; 
 int FUNC6 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  f2fs_dblock_aops ; 
 int /*<<< orphan*/  f2fs_file_inode_operations ; 
 int /*<<< orphan*/  f2fs_file_operations ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*) ; 
 struct inode* FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC16 (struct f2fs_sb_info*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct inode *dir, struct dentry *dentry, umode_t mode,
						bool excl)
{
	struct f2fs_sb_info *sbi = FUNC0(dir);
	struct inode *inode;
	nid_t ino = 0;
	int err;

	if (FUNC18(FUNC9(sbi)))
		return -EIO;
	if (!FUNC11(sbi))
		return -ENOSPC;

	err = FUNC5(dir);
	if (err)
		return err;

	inode = FUNC13(dir, mode);
	if (FUNC2(inode))
		return FUNC3(inode);

	if (!FUNC17(sbi, DISABLE_EXT_IDENTIFY))
		FUNC16(sbi, inode, dentry->d_name.name);

	inode->i_op = &f2fs_file_inode_operations;
	inode->i_fop = &f2fs_file_operations;
	inode->i_mapping->a_ops = &f2fs_dblock_aops;
	ino = inode->i_ino;

	FUNC12(sbi);
	err = FUNC6(dentry, inode);
	if (err)
		goto out;
	FUNC15(sbi);

	FUNC7(sbi, ino);

	FUNC4(dentry, inode);

	if (FUNC1(dir))
		FUNC14(sbi->sb, 1);

	FUNC8(sbi, true);
	return 0;
out:
	FUNC10(inode);
	return err;
}