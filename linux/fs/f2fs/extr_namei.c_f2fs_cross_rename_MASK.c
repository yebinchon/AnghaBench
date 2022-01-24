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
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_ino; void* i_ctime; int /*<<< orphan*/  i_mode; } ;
struct f2fs_sb_info {int /*<<< orphan*/  sb; } ;
struct f2fs_dir_entry {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; struct inode* d_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_sem; int /*<<< orphan*/  i_projid; } ;
struct TYPE_3__ {scalar_t__ fsync_mode; } ;

/* Variables and functions */
 int EIO ; 
 int EMLINK ; 
 int ENOENT ; 
 int ENOSPC ; 
 int EXDEV ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 scalar_t__ F2FS_LINK_MAX ; 
 TYPE_1__ FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FI_PROJ_INHERIT ; 
 scalar_t__ FSYNC_MODE_STRICT ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int FUNC5 (struct page*) ; 
 int /*<<< orphan*/  REQ_TIME ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRANS_DIR_INO ; 
 void* FUNC7 (struct inode*) ; 
 struct inode* FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct f2fs_sb_info*) ; 
 struct f2fs_dir_entry* FUNC14 (struct inode*,int /*<<< orphan*/ *,struct page**) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC17 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,int) ; 
 struct f2fs_dir_entry* FUNC19 (struct inode*,struct page**) ; 
 int /*<<< orphan*/  FUNC20 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*,struct f2fs_dir_entry*,struct page*,struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC24 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*) ; 
 scalar_t__ FUNC26 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC30(struct inode *old_dir, struct dentry *old_dentry,
			     struct inode *new_dir, struct dentry *new_dentry)
{
	struct f2fs_sb_info *sbi = FUNC1(old_dir);
	struct inode *old_inode = FUNC8(old_dentry);
	struct inode *new_inode = FUNC8(new_dentry);
	struct page *old_dir_page, *new_dir_page;
	struct page *old_page, *new_page;
	struct f2fs_dir_entry *old_dir_entry = NULL, *new_dir_entry = NULL;
	struct f2fs_dir_entry *old_entry, *new_entry;
	int old_nlink = 0, new_nlink = 0;
	int err;

	if (FUNC28(FUNC13(sbi)))
		return -EIO;
	if (!FUNC16(sbi))
		return -ENOSPC;

	if ((FUNC26(new_dir, FI_PROJ_INHERIT) &&
			!FUNC27(FUNC0(new_dir)->i_projid,
			FUNC0(old_dentry->d_inode)->i_projid)) ||
	    (FUNC26(new_dir, FI_PROJ_INHERIT) &&
			!FUNC27(FUNC0(old_dir)->i_projid,
			FUNC0(new_dentry->d_inode)->i_projid)))
		return -EXDEV;

	err = FUNC10(old_dir);
	if (err)
		goto out;

	err = FUNC10(new_dir);
	if (err)
		goto out;

	err = -ENOENT;
	old_entry = FUNC14(old_dir, &old_dentry->d_name, &old_page);
	if (!old_entry) {
		if (FUNC4(old_page))
			err = FUNC5(old_page);
		goto out;
	}

	new_entry = FUNC14(new_dir, &new_dentry->d_name, &new_page);
	if (!new_entry) {
		if (FUNC4(new_page))
			err = FUNC5(new_page);
		goto out_old;
	}

	/* prepare for updating ".." directory entry info later */
	if (old_dir != new_dir) {
		if (FUNC6(old_inode->i_mode)) {
			old_dir_entry = FUNC19(old_inode,
							&old_dir_page);
			if (!old_dir_entry) {
				if (FUNC4(old_dir_page))
					err = FUNC5(old_dir_page);
				goto out_new;
			}
		}

		if (FUNC6(new_inode->i_mode)) {
			new_dir_entry = FUNC19(new_inode,
							&new_dir_page);
			if (!new_dir_entry) {
				if (FUNC4(new_dir_page))
					err = FUNC5(new_dir_page);
				goto out_old_dir;
			}
		}
	}

	/*
	 * If cross rename between file and directory those are not
	 * in the same directory, we will inc nlink of file's parent
	 * later, so we should check upper boundary of its nlink.
	 */
	if ((!old_dir_entry || !new_dir_entry) &&
				old_dir_entry != new_dir_entry) {
		old_nlink = old_dir_entry ? -1 : 1;
		new_nlink = -old_nlink;
		err = -EMLINK;
		if ((old_nlink > 0 && old_dir->i_nlink >= F2FS_LINK_MAX) ||
			(new_nlink > 0 && new_dir->i_nlink >= F2FS_LINK_MAX))
			goto out_new_dir;
	}

	FUNC12(sbi, true);

	FUNC17(sbi);

	/* update ".." directory entry info of old dentry */
	if (old_dir_entry)
		FUNC21(old_inode, old_dir_entry, old_dir_page, new_dir);

	/* update ".." directory entry info of new dentry */
	if (new_dir_entry)
		FUNC21(new_inode, new_dir_entry, new_dir_page, old_dir);

	/* update directory entry info of old dir inode */
	FUNC21(old_dir, old_entry, old_page, new_inode);

	FUNC9(&FUNC0(old_inode)->i_sem);
	FUNC25(old_inode);
	FUNC29(&FUNC0(old_inode)->i_sem);

	old_dir->i_ctime = FUNC7(old_dir);
	if (old_nlink) {
		FUNC9(&FUNC0(old_dir)->i_sem);
		FUNC15(old_dir, old_nlink > 0);
		FUNC29(&FUNC0(old_dir)->i_sem);
	}
	FUNC18(old_dir, false);

	/* update directory entry info of new dir inode */
	FUNC21(new_dir, new_entry, new_page, old_inode);

	FUNC9(&FUNC0(new_inode)->i_sem);
	FUNC25(new_inode);
	FUNC29(&FUNC0(new_inode)->i_sem);

	new_dir->i_ctime = FUNC7(new_dir);
	if (new_nlink) {
		FUNC9(&FUNC0(new_dir)->i_sem);
		FUNC15(new_dir, new_nlink > 0);
		FUNC29(&FUNC0(new_dir)->i_sem);
	}
	FUNC18(new_dir, false);

	if (FUNC2(sbi).fsync_mode == FSYNC_MODE_STRICT) {
		FUNC11(sbi, old_dir->i_ino, TRANS_DIR_INO);
		FUNC11(sbi, new_dir->i_ino, TRANS_DIR_INO);
	}

	FUNC23(sbi);

	if (FUNC3(old_dir) || FUNC3(new_dir))
		FUNC22(sbi->sb, 1);

	FUNC24(sbi, REQ_TIME);
	return 0;
out_new_dir:
	if (new_dir_entry) {
		FUNC20(new_dir_page, 0);
	}
out_old_dir:
	if (old_dir_entry) {
		FUNC20(old_dir_page, 0);
	}
out_new:
	FUNC20(new_page, 0);
out_old:
	FUNC20(old_page, 0);
out:
	return err;
}