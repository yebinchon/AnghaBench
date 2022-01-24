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
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_state; void* i_ctime; int /*<<< orphan*/  i_nlink; } ;
struct f2fs_sb_info {int /*<<< orphan*/  sb; } ;
struct f2fs_dir_entry {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; struct inode* d_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_sem; int /*<<< orphan*/  i_pino; int /*<<< orphan*/  i_projid; } ;
struct TYPE_3__ {scalar_t__ fsync_mode; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int ENOSPC ; 
 int ENOTEMPTY ; 
 int EXDEV ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 TYPE_1__ FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FI_INC_LINK ; 
 int /*<<< orphan*/  FI_PROJ_INHERIT ; 
 scalar_t__ FSYNC_MODE_STRICT ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  I_LINKABLE ; 
 int FUNC5 (struct page*) ; 
 unsigned int RENAME_WHITEOUT ; 
 int /*<<< orphan*/  REQ_TIME ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRANS_DIR_INO ; 
 void* FUNC7 (struct inode*) ; 
 struct inode* FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct inode*) ; 
 int FUNC11 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct f2fs_sb_info*) ; 
 int FUNC17 (struct inode*,struct inode**) ; 
 int /*<<< orphan*/  FUNC18 (struct f2fs_dir_entry*,struct page*,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 struct f2fs_dir_entry* FUNC20 (struct inode*,int /*<<< orphan*/ *,struct page**) ; 
 int FUNC21 (struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC24 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*,int) ; 
 struct f2fs_dir_entry* FUNC26 (struct inode*,struct page**) ; 
 int /*<<< orphan*/  FUNC27 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC29 (struct inode*,struct f2fs_dir_entry*,struct page*,struct inode*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC32 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct inode*) ; 
 int /*<<< orphan*/  FUNC34 (struct inode*) ; 
 scalar_t__ FUNC35 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC40(struct inode *old_dir, struct dentry *old_dentry,
			struct inode *new_dir, struct dentry *new_dentry,
			unsigned int flags)
{
	struct f2fs_sb_info *sbi = FUNC1(old_dir);
	struct inode *old_inode = FUNC8(old_dentry);
	struct inode *new_inode = FUNC8(new_dentry);
	struct inode *whiteout = NULL;
	struct page *old_dir_page;
	struct page *old_page, *new_page = NULL;
	struct f2fs_dir_entry *old_dir_entry = NULL;
	struct f2fs_dir_entry *old_entry;
	struct f2fs_dir_entry *new_entry;
	bool is_old_inline = FUNC21(old_dir);
	int err;

	if (FUNC38(FUNC16(sbi)))
		return -EIO;
	if (!FUNC23(sbi))
		return -ENOSPC;

	if (FUNC35(new_dir, FI_PROJ_INHERIT) &&
			(!FUNC36(FUNC0(new_dir)->i_projid,
			FUNC0(old_dentry->d_inode)->i_projid)))
		return -EXDEV;

	err = FUNC10(old_dir);
	if (err)
		goto out;

	err = FUNC10(new_dir);
	if (err)
		goto out;

	if (new_inode) {
		err = FUNC10(new_inode);
		if (err)
			goto out;
	}

	err = -ENOENT;
	old_entry = FUNC20(old_dir, &old_dentry->d_name, &old_page);
	if (!old_entry) {
		if (FUNC4(old_page))
			err = FUNC5(old_page);
		goto out;
	}

	if (FUNC6(old_inode->i_mode)) {
		old_dir_entry = FUNC26(old_inode, &old_dir_page);
		if (!old_dir_entry) {
			if (FUNC4(old_dir_page))
				err = FUNC5(old_dir_page);
			goto out_old;
		}
	}

	if (flags & RENAME_WHITEOUT) {
		err = FUNC17(old_dir, &whiteout);
		if (err)
			goto out_dir;
	}

	if (new_inode) {

		err = -ENOTEMPTY;
		if (old_dir_entry && !FUNC19(new_inode))
			goto out_whiteout;

		err = -ENOENT;
		new_entry = FUNC20(new_dir, &new_dentry->d_name,
						&new_page);
		if (!new_entry) {
			if (FUNC4(new_page))
				err = FUNC5(new_page);
			goto out_whiteout;
		}

		FUNC15(sbi, true);

		FUNC24(sbi);

		err = FUNC11(sbi);
		if (err)
			goto put_out_dir;

		FUNC29(new_dir, new_entry, new_page, old_inode);

		new_inode->i_ctime = FUNC7(new_inode);
		FUNC9(&FUNC0(new_inode)->i_sem);
		if (old_dir_entry)
			FUNC22(new_inode, false);
		FUNC22(new_inode, false);
		FUNC39(&FUNC0(new_inode)->i_sem);

		if (!new_inode->i_nlink)
			FUNC14(new_inode);
		else
			FUNC28(sbi);
	} else {
		FUNC15(sbi, true);

		FUNC24(sbi);

		err = FUNC13(new_dentry, old_inode);
		if (err) {
			FUNC31(sbi);
			goto out_whiteout;
		}

		if (old_dir_entry)
			FUNC22(new_dir, true);

		/*
		 * old entry and new entry can locate in the same inline
		 * dentry in inode, when attaching new entry in inline dentry,
		 * it could force inline dentry conversion, after that,
		 * old_entry and old_page will point to wrong address, in
		 * order to avoid this, let's do the check and update here.
		 */
		if (is_old_inline && !FUNC21(old_dir)) {
			FUNC27(old_page, 0);
			old_page = NULL;

			old_entry = FUNC20(old_dir,
						&old_dentry->d_name, &old_page);
			if (!old_entry) {
				err = -ENOENT;
				if (FUNC4(old_page))
					err = FUNC5(old_page);
				FUNC31(sbi);
				goto out_whiteout;
			}
		}
	}

	FUNC9(&FUNC0(old_inode)->i_sem);
	if (!old_dir_entry || whiteout)
		FUNC33(old_inode);
	else
		FUNC0(old_inode)->i_pino = new_dir->i_ino;
	FUNC39(&FUNC0(old_inode)->i_sem);

	old_inode->i_ctime = FUNC7(old_inode);
	FUNC25(old_inode, false);

	FUNC18(old_entry, old_page, old_dir, NULL);

	if (whiteout) {
		whiteout->i_state |= I_LINKABLE;
		FUNC37(whiteout, FI_INC_LINK);
		err = FUNC13(old_dentry, whiteout);
		if (err)
			goto put_out_dir;
		whiteout->i_state &= ~I_LINKABLE;
		FUNC34(whiteout);
	}

	if (old_dir_entry) {
		if (old_dir != new_dir && !whiteout)
			FUNC29(old_inode, old_dir_entry,
						old_dir_page, new_dir);
		else
			FUNC27(old_dir_page, 0);
		FUNC22(old_dir, false);
	}
	if (FUNC2(sbi).fsync_mode == FSYNC_MODE_STRICT) {
		FUNC12(sbi, new_dir->i_ino, TRANS_DIR_INO);
		if (FUNC6(old_inode->i_mode))
			FUNC12(sbi, old_inode->i_ino,
							TRANS_DIR_INO);
	}

	FUNC31(sbi);

	if (FUNC3(old_dir) || FUNC3(new_dir))
		FUNC30(sbi->sb, 1);

	FUNC32(sbi, REQ_TIME);
	return 0;

put_out_dir:
	FUNC31(sbi);
	if (new_page)
		FUNC27(new_page, 0);
out_whiteout:
	if (whiteout)
		FUNC34(whiteout);
out_dir:
	if (old_dir_entry)
		FUNC27(old_dir_page, 0);
out_old:
	FUNC27(old_page, 0);
out:
	return err;
}