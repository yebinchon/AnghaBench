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
struct inode {scalar_t__ i_ino; scalar_t__ i_nlink; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_data; } ;
struct f2fs_sb_info {int dummy; } ;
typedef  scalar_t__ nid_t ;
struct TYPE_2__ {scalar_t__ i_xattr_nid; } ;

/* Variables and functions */
 int /*<<< orphan*/  APPEND_INO ; 
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 struct f2fs_sb_info* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC4 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FAULT_EVICT_INODE ; 
 int /*<<< orphan*/  FI_APPEND_WRITE ; 
 int /*<<< orphan*/  FI_DIRTY_INODE ; 
 int /*<<< orphan*/  FI_FREE_NID ; 
 int /*<<< orphan*/  FI_NO_ALLOC ; 
 int /*<<< orphan*/  FI_UPDATE_WRITE ; 
 int /*<<< orphan*/  FLUSH_INO ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 int /*<<< orphan*/  SBI_QUOTA_NEED_REPAIR ; 
 int /*<<< orphan*/  UPDATE_INO ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct f2fs_sb_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 scalar_t__ FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (struct f2fs_sb_info*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct inode*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (struct inode*) ; 
 int /*<<< orphan*/  FUNC25 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*) ; 
 int /*<<< orphan*/  FUNC27 (struct inode*) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*) ; 
 scalar_t__ FUNC29 (struct inode*) ; 
 int /*<<< orphan*/  FUNC30 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC32 (struct inode*) ; 
 scalar_t__ FUNC33 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC35 (int) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (struct inode*) ; 
 int /*<<< orphan*/  FUNC41 (struct inode*) ; 
 int /*<<< orphan*/  FUNC42 (struct inode*) ; 
 scalar_t__ FUNC43 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC44 (struct inode*) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *) ; 

void FUNC46(struct inode *inode)
{
	struct f2fs_sb_info *sbi = FUNC2(inode);
	nid_t xnid = FUNC1(inode)->i_xattr_nid;
	int err = 0;

	/* some remained atomic pages should discarded */
	if (FUNC18(inode))
		FUNC16(inode);

	FUNC44(inode);
	FUNC45(&inode->i_data);

	if (inode->i_ino == FUNC4(sbi) ||
			inode->i_ino == FUNC3(sbi))
		goto out_clear;

	FUNC13(sbi, FUNC29(inode));
	FUNC20(inode);

	FUNC15(inode);

	if (inode->i_nlink || FUNC32(inode))
		goto no_delete;

	err = FUNC9(inode);
	if (err) {
		err = 0;
		FUNC39(sbi, SBI_QUOTA_NEED_REPAIR);
	}

	FUNC21(sbi, inode->i_ino, APPEND_INO);
	FUNC21(sbi, inode->i_ino, UPDATE_INO);
	FUNC21(sbi, inode->i_ino, FLUSH_INO);

	FUNC37(inode->i_sb);
	FUNC38(inode, FI_NO_ALLOC);
	FUNC30(inode, 0);
retry:
	if (FUNC0(inode))
		err = FUNC24(inode);

	if (FUNC43(sbi, FAULT_EVICT_INODE)) {
		FUNC23(FAULT_EVICT_INODE);
		err = -EIO;
	}

	if (!err) {
		FUNC19(sbi);
		err = FUNC22(inode);
		FUNC25(sbi);
		if (err == -ENOENT)
			err = 0;
	}

	/* give more chances, if ENOMEM case */
	if (err == -ENOMEM) {
		err = 0;
		goto retry;
	}

	if (err) {
		FUNC26(inode);
		if (FUNC10(inode))
			FUNC39(sbi, SBI_QUOTA_NEED_REPAIR);
	}
	FUNC36(inode->i_sb);
no_delete:
	FUNC8(inode);

	FUNC42(inode);
	FUNC40(inode);
	FUNC41(inode);

	if (FUNC35(!FUNC14(sbi) &&
				!FUNC34(sbi, SBI_CP_DISABLED)))
		FUNC13(sbi, FUNC33(inode, FI_DIRTY_INODE));
	else
		FUNC17(inode);

	/* ino == 0, if f2fs_new_inode() was failed t*/
	if (inode->i_ino)
		FUNC31(FUNC5(sbi), inode->i_ino,
							inode->i_ino);
	if (xnid)
		FUNC31(FUNC5(sbi), xnid, xnid);
	if (inode->i_nlink) {
		if (FUNC33(inode, FI_APPEND_WRITE))
			FUNC11(sbi, inode->i_ino, APPEND_INO);
		if (FUNC33(inode, FI_UPDATE_WRITE))
			FUNC11(sbi, inode->i_ino, UPDATE_INO);
	}
	if (FUNC33(inode, FI_FREE_NID)) {
		FUNC12(sbi, inode->i_ino);
		FUNC7(inode, FI_FREE_NID);
	} else {
		/*
		 * If xattr nid is corrupted, we can reach out error condition,
		 * err & !f2fs_exist_written_data(sbi, inode->i_ino, ORPHAN_INO)).
		 * In that case, f2fs_check_nid_range() is enough to give a clue.
		 */
	}
out_clear:
	FUNC27(inode);
	FUNC28(inode);
	FUNC6(inode);
}