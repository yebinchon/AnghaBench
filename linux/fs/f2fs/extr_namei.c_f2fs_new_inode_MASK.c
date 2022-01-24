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
struct inode {int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_generation; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; scalar_t__ i_blocks; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct f2fs_sb_info {int dummy; } ;
typedef  int /*<<< orphan*/  nid_t ;
struct TYPE_4__ {int i_current_depth; int i_flags; int i_inline_xattr_size; int /*<<< orphan*/  i_extra_isize; int /*<<< orphan*/  i_projid; int /*<<< orphan*/  i_crtime; } ;
struct TYPE_3__ {int inline_xattr_size; } ;

/* Variables and functions */
 int DEFAULT_INLINE_XATTR_ADDRS ; 
 scalar_t__ FUNC0 (struct f2fs_sb_info*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 struct inode* FUNC1 (int) ; 
 int /*<<< orphan*/  F2FS_DEF_PROJID ; 
 int F2FS_FL_INHERITED ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 int F2FS_INDEX_FL ; 
 struct f2fs_sb_info* FUNC3 (struct inode*) ; 
 TYPE_1__ FUNC4 (struct f2fs_sb_info*) ; 
 int F2FS_PROJINHERIT_FL ; 
 int /*<<< orphan*/  F2FS_TOTAL_EXTRA_ATTR_SIZE ; 
 int /*<<< orphan*/  FI_EXTRA_ATTR ; 
 int /*<<< orphan*/  FI_FREE_NID ; 
 int /*<<< orphan*/  FI_INLINE_DATA ; 
 int /*<<< orphan*/  FI_INLINE_DENTRY ; 
 int /*<<< orphan*/  FI_INLINE_XATTR ; 
 int /*<<< orphan*/  FI_NEW_INODE ; 
 int /*<<< orphan*/  FI_PROJ_INHERIT ; 
 int /*<<< orphan*/  INLINE_DATA ; 
 int /*<<< orphan*/  INLINE_XATTR ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_NOQUOTA ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 scalar_t__ FUNC14 (struct inode*) ; 
 scalar_t__ FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct f2fs_sb_info*) ; 
 int FUNC18 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC19 (struct inode*) ; 
 scalar_t__ FUNC20 (struct inode*) ; 
 scalar_t__ FUNC21 (struct inode*) ; 
 scalar_t__ FUNC22 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC23 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC24 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*) ; 
 int /*<<< orphan*/  FUNC27 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC28 (struct inode*,struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC29 (struct inode*) ; 
 int /*<<< orphan*/  FUNC30 (struct inode*) ; 
 int /*<<< orphan*/  FUNC31 (struct inode*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct inode* FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct inode*) ; 
 int /*<<< orphan*/  FUNC37 (struct inode*) ; 
 int /*<<< orphan*/  FUNC38 (struct inode*) ; 
 scalar_t__ FUNC39 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC41 (struct inode*) ; 

__attribute__((used)) static struct inode *FUNC42(struct inode *dir, umode_t mode)
{
	struct f2fs_sb_info *sbi = FUNC3(dir);
	nid_t ino;
	struct inode *inode;
	bool nid_free = false;
	int xattr_size = 0;
	int err;

	inode = FUNC33(dir->i_sb);
	if (!inode)
		return FUNC1(-ENOMEM);

	FUNC17(sbi);
	if (!FUNC11(sbi, &ino)) {
		FUNC27(sbi);
		err = -ENOSPC;
		goto fail;
	}
	FUNC27(sbi);

	nid_free = true;

	FUNC28(inode, dir, mode);

	inode->i_ino = ino;
	inode->i_blocks = 0;
	inode->i_mtime = inode->i_atime = inode->i_ctime = FUNC8(inode);
	FUNC2(inode)->i_crtime = inode->i_mtime;
	inode->i_generation = FUNC34();

	if (FUNC6(inode->i_mode))
		FUNC2(inode)->i_current_depth = 1;

	err = FUNC29(inode);
	if (err) {
		err = -EINVAL;
		goto fail;
	}

	if (FUNC24(sbi) &&
		(FUNC2(dir)->i_flags & F2FS_PROJINHERIT_FL))
		FUNC2(inode)->i_projid = FUNC2(dir)->i_projid;
	else
		FUNC2(inode)->i_projid = FUNC32(&init_user_ns,
							F2FS_DEF_PROJID);

	err = FUNC10(inode);
	if (err)
		goto fail_drop;

	FUNC35(inode, FI_NEW_INODE);

	/* If the directory encrypted, then we should encrypt the inode. */
	if ((FUNC5(dir) || FUNC0(sbi)) &&
				FUNC19(inode))
		FUNC25(inode);

	if (FUNC22(sbi)) {
		FUNC35(inode, FI_EXTRA_ATTR);
		FUNC2(inode)->i_extra_isize = F2FS_TOTAL_EXTRA_ATTR_SIZE;
	}

	if (FUNC39(sbi, INLINE_XATTR))
		FUNC35(inode, FI_INLINE_XATTR);

	if (FUNC39(sbi, INLINE_DATA) && FUNC20(inode))
		FUNC35(inode, FI_INLINE_DATA);
	if (FUNC21(inode))
		FUNC35(inode, FI_INLINE_DENTRY);

	if (FUNC23(sbi)) {
		FUNC12(sbi, !FUNC13(inode));
		if (FUNC15(inode))
			xattr_size = FUNC4(sbi).inline_xattr_size;
		/* Otherwise, will be 0 */
	} else if (FUNC15(inode) ||
				FUNC14(inode)) {
		xattr_size = DEFAULT_INLINE_XATTR_ADDRS;
	}
	FUNC2(inode)->i_inline_xattr_size = xattr_size;

	FUNC16(inode, NULL);

	FUNC38(inode);
	FUNC37(inode);
	FUNC36(inode);

	FUNC2(inode)->i_flags =
		FUNC18(mode, FUNC2(dir)->i_flags & F2FS_FL_INHERITED);

	if (FUNC6(inode->i_mode))
		FUNC2(inode)->i_flags |= F2FS_INDEX_FL;

	if (FUNC2(inode)->i_flags & F2FS_PROJINHERIT_FL)
		FUNC35(inode, FI_PROJ_INHERIT);

	FUNC26(inode);

	FUNC40(inode, 0);
	return inode;

fail:
	FUNC40(inode, err);
	FUNC31(inode);
	if (nid_free)
		FUNC35(inode, FI_FREE_NID);
	FUNC30(inode);
	return FUNC1(err);
fail_drop:
	FUNC40(inode, err);
	FUNC9(inode);
	inode->i_flags |= S_NOQUOTA;
	if (nid_free)
		FUNC35(inode, FI_FREE_NID);
	FUNC7(inode);
	FUNC41(inode);
	FUNC30(inode);
	return FUNC1(err);
}