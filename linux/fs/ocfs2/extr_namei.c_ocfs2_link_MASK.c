#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct ocfs2_super {int /*<<< orphan*/  sb; int /*<<< orphan*/  uuid_str; } ;
struct ocfs2_dir_lookup_result {int /*<<< orphan*/ * member_0; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_ctime_nsec; int /*<<< orphan*/  i_ctime; } ;
struct TYPE_5__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct inode {TYPE_2__ i_ctime; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; struct dentry* d_parent; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_6__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int EIO ; 
 int EMLINK ; 
 int ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 TYPE_3__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC9 (struct inode*) ; 
 struct inode* FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*,struct inode*) ; 
 int FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int FUNC19 (int /*<<< orphan*/ *,struct dentry*,struct inode*,scalar_t__,struct buffer_head*,struct ocfs2_dir_lookup_result*) ; 
 int /*<<< orphan*/  FUNC20 (struct ocfs2_dinode*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC24 (struct dentry*,struct inode*,scalar_t__) ; 
 int FUNC25 (struct ocfs2_super*,struct buffer_head**,struct inode*,struct buffer_head**,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC27 (struct ocfs2_dir_lookup_result*) ; 
 int FUNC28 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC29 (struct inode*,int) ; 
 int FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC33 (struct ocfs2_super*) ; 
 int FUNC34 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC35 (struct ocfs2_super*,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_dir_lookup_result*) ; 
 scalar_t__ FUNC36 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC37 (struct ocfs2_dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC38 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 (unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC41(struct dentry *old_dentry,
		      struct inode *dir,
		      struct dentry *dentry)
{
	handle_t *handle;
	struct inode *inode = FUNC10(old_dentry);
	struct inode *old_dir = FUNC10(old_dentry->d_parent);
	int err;
	struct buffer_head *fe_bh = NULL;
	struct buffer_head *old_dir_bh = NULL;
	struct buffer_head *parent_fe_bh = NULL;
	struct ocfs2_dinode *fe = NULL;
	struct ocfs2_super *osb = FUNC3(dir->i_sb);
	struct ocfs2_dir_lookup_result lookup = { NULL, };
	sigset_t oldset;
	u64 old_de_ino;

	FUNC40((unsigned long long)FUNC2(inode)->ip_blkno,
			 old_dentry->d_name.len, old_dentry->d_name.name,
			 dentry->d_name.len, dentry->d_name.name);

	if (FUNC5(inode->i_mode))
		return -EPERM;

	err = FUNC12(dir);
	if (err) {
		FUNC18(err);
		return err;
	}

	err = FUNC25(osb, &old_dir_bh, old_dir,
			&parent_fe_bh, dir, 0);
	if (err < 0) {
		if (err != -ENOENT)
			FUNC18(err);
		return err;
	}

	/* make sure both dirs have bhs
	 * get an extra ref on old_dir_bh if old==new */
	if (!parent_fe_bh) {
		if (old_dir_bh) {
			parent_fe_bh = old_dir_bh;
			FUNC14(parent_fe_bh);
		} else {
			FUNC17(ML_ERROR, "%s: no old_dir_bh!\n", osb->uuid_str);
			err = -EIO;
			goto out;
		}
	}

	if (!dir->i_nlink) {
		err = -ENOENT;
		goto out;
	}

	err = FUNC34(old_dir, old_dentry->d_name.name,
			old_dentry->d_name.len, &old_de_ino);
	if (err) {
		err = -ENOENT;
		goto out;
	}

	/*
	 * Check whether another node removed the source inode while we
	 * were in the vfs.
	 */
	if (old_de_ino != FUNC2(inode)->ip_blkno) {
		err = -ENOENT;
		goto out;
	}

	err = FUNC22(dir, dentry->d_name.name,
					dentry->d_name.len);
	if (err)
		goto out;

	err = FUNC35(osb, dir, parent_fe_bh,
					   dentry->d_name.name,
					   dentry->d_name.len, &lookup);
	if (err < 0) {
		FUNC18(err);
		goto out;
	}

	err = FUNC28(inode, &fe_bh, 1);
	if (err < 0) {
		if (err != -ENOENT)
			FUNC18(err);
		goto out;
	}

	fe = (struct ocfs2_dinode *) fe_bh->b_data;
	if (FUNC36(fe) >= FUNC33(osb)) {
		err = -EMLINK;
		goto out_unlock_inode;
	}

	handle = FUNC38(osb, FUNC32(osb->sb));
	if (FUNC1(handle)) {
		err = FUNC4(handle);
		handle = NULL;
		FUNC18(err);
		goto out_unlock_inode;
	}

	/* Starting to change things, restart is no longer possible. */
	FUNC21(&oldset);

	err = FUNC30(handle, FUNC0(inode), fe_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (err < 0) {
		FUNC18(err);
		goto out_commit;
	}

	FUNC16(inode);
	inode->i_ctime = FUNC9(inode);
	FUNC37(fe, inode->i_nlink);
	fe->i_ctime = FUNC8(inode->i_ctime.tv_sec);
	fe->i_ctime_nsec = FUNC7(inode->i_ctime.tv_nsec);
	FUNC31(handle, fe_bh);

	err = FUNC19(handle, dentry, inode,
			      FUNC2(inode)->ip_blkno,
			      parent_fe_bh, &lookup);
	if (err) {
		FUNC20(fe, -1);
		FUNC13(inode);
		FUNC18(err);
		goto out_commit;
	}

	err = FUNC24(dentry, inode, FUNC2(dir)->ip_blkno);
	if (err) {
		FUNC18(err);
		goto out_commit;
	}

	FUNC15(inode);
	FUNC11(dentry, inode);

out_commit:
	FUNC23(osb, handle);
	FUNC39(&oldset);
out_unlock_inode:
	FUNC29(inode, 1);

out:
	FUNC26(old_dir, dir);

	FUNC6(fe_bh);
	FUNC6(parent_fe_bh);
	FUNC6(old_dir_bh);

	FUNC27(&lookup);

	if (err)
		FUNC18(err);

	return err;
}