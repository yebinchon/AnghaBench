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
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; scalar_t__ i_nlink; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct iattr {unsigned int ia_valid; scalar_t__ ia_size; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; } ;
struct ext4_sb_info {scalar_t__ s_bitmap_maxbytes; } ;
struct dentry {int dummy; } ;
typedef  scalar_t__ loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ i_disksize; int /*<<< orphan*/  i_mmap_sem; int /*<<< orphan*/  i_data_sem; int /*<<< orphan*/  xattr_sem; } ;

/* Variables and functions */
 unsigned int const ATTR_GID ; 
 unsigned int const ATTR_MODE ; 
 int ATTR_SIZE ; 
 unsigned int const ATTR_TIMES_SET ; 
 unsigned int const ATTR_UID ; 
 int EFBIG ; 
 int EINVAL ; 
 int EIO ; 
 int EPERM ; 
 int /*<<< orphan*/  EXT4_HT_INODE ; 
 int /*<<< orphan*/  EXT4_HT_QUOTA ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct ext4_sb_info* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 struct inode* FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct inode*) ; 
 int FUNC15 (struct inode*,struct iattr*) ; 
 int FUNC16 (struct inode*,scalar_t__) ; 
 int FUNC17 (struct inode*) ; 
 int FUNC18 (struct ext4_sb_info*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC23 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC25 (struct inode*) ; 
 scalar_t__ FUNC26 (struct inode*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC29 (struct inode*) ; 
 int /*<<< orphan*/  FUNC30 (struct inode*) ; 
 int FUNC31 (struct dentry*,struct iattr*) ; 
 int FUNC32 (struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC35 (struct inode*) ; 
 int /*<<< orphan*/  FUNC36 (struct inode*) ; 
 scalar_t__ FUNC37 (struct inode*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC38 (struct inode*) ; 
 int /*<<< orphan*/  FUNC39 (struct inode*,scalar_t__,scalar_t__) ; 
 int FUNC40 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (struct inode*,struct iattr*) ; 
 int FUNC42 (struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC43 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC45 (int) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *) ; 

int FUNC48(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = FUNC11(dentry);
	int error, rc = 0;
	int orphan = 0;
	const unsigned int ia_valid = attr->ia_valid;

	if (FUNC45(FUNC18(FUNC3(inode->i_sb))))
		return -EIO;

	if (FUNC45(FUNC6(inode)))
		return -EPERM;

	if (FUNC45(FUNC4(inode) &&
		     (ia_valid & (ATTR_MODE | ATTR_UID |
				  ATTR_GID | ATTR_TIMES_SET))))
		return -EPERM;

	error = FUNC42(dentry, attr);
	if (error)
		return error;

	error = FUNC31(dentry, attr);
	if (error)
		return error;

	error = FUNC32(dentry, attr);
	if (error)
		return error;

	if (FUNC37(inode, attr)) {
		error = FUNC14(inode);
		if (error)
			return error;
	}
	if ((ia_valid & ATTR_UID && !FUNC44(attr->ia_uid, inode->i_uid)) ||
	    (ia_valid & ATTR_GID && !FUNC33(attr->ia_gid, inode->i_gid))) {
		handle_t *handle;

		/* (user+group)*(old+new) structure, inode write (sb,
		 * inode block, ? - but truncate inode update has it) */
		handle = FUNC20(inode, EXT4_HT_QUOTA,
			(FUNC2(inode->i_sb) +
			 FUNC1(inode->i_sb)) + 3);
		if (FUNC5(handle)) {
			error = FUNC8(handle);
			goto err_out;
		}

		/* dquot_transfer() calls back ext4_get_inode_usage() which
		 * counts xattr inode references.
		 */
		FUNC12(&FUNC0(inode)->xattr_sem);
		error = FUNC15(inode, attr);
		FUNC46(&FUNC0(inode)->xattr_sem);

		if (error) {
			FUNC21(handle);
			return error;
		}
		/* Update corresponding info in inode so that everything is in
		 * one transaction */
		if (attr->ia_valid & ATTR_UID)
			inode->i_uid = attr->ia_uid;
		if (attr->ia_valid & ATTR_GID)
			inode->i_gid = attr->ia_gid;
		error = FUNC22(handle, inode);
		FUNC21(handle);
	}

	if (attr->ia_valid & ATTR_SIZE) {
		handle_t *handle;
		loff_t oldsize = inode->i_size;
		int shrink = (attr->ia_size < inode->i_size);

		if (!(FUNC28(inode, EXT4_INODE_EXTENTS))) {
			struct ext4_sb_info *sbi = FUNC3(inode->i_sb);

			if (attr->ia_size > sbi->s_bitmap_maxbytes)
				return -EFBIG;
		}
		if (!FUNC9(inode->i_mode))
			return -EINVAL;

		if (FUNC7(inode) && attr->ia_size != inode->i_size)
			FUNC36(inode);

		if (shrink) {
			if (FUNC26(inode)) {
				error = FUNC16(inode,
							    attr->ia_size);
				if (error)
					goto err_out;
			}
			/*
			 * Blocks are going to be removed from the inode. Wait
			 * for dio in flight.
			 */
			FUNC35(inode);
		}

		FUNC13(&FUNC0(inode)->i_mmap_sem);

		rc = FUNC17(inode);
		if (rc) {
			FUNC47(&FUNC0(inode)->i_mmap_sem);
			return rc;
		}

		if (attr->ia_size != inode->i_size) {
			handle = FUNC20(inode, EXT4_HT_INODE, 3);
			if (FUNC5(handle)) {
				error = FUNC8(handle);
				goto out_mmap_sem;
			}
			if (FUNC19(handle) && shrink) {
				error = FUNC23(handle, inode);
				orphan = 1;
			}
			/*
			 * Update c/mtime on truncate up, ext4_truncate() will
			 * update c/mtime in shrink case below
			 */
			if (!shrink) {
				inode->i_mtime = FUNC10(inode);
				inode->i_ctime = inode->i_mtime;
			}
			FUNC13(&FUNC0(inode)->i_data_sem);
			FUNC0(inode)->i_disksize = attr->ia_size;
			rc = FUNC22(handle, inode);
			if (!error)
				error = rc;
			/*
			 * We have to update i_size under i_data_sem together
			 * with i_disksize to avoid races with writeback code
			 * running ext4_wb_update_i_disksize().
			 */
			if (!error)
				FUNC34(inode, attr->ia_size);
			FUNC47(&FUNC0(inode)->i_data_sem);
			FUNC21(handle);
			if (error)
				goto out_mmap_sem;
			if (!shrink) {
				FUNC39(inode, oldsize,
							 inode->i_size);
			} else if (FUNC25(inode)) {
				FUNC30(inode);
			}
		}

		/*
		 * Truncate pagecache after we've waited for commit
		 * in data=journal mode to make pages freeable.
		 */
		FUNC43(inode, inode->i_size);
		/*
		 * Call ext4_truncate() even if i_size didn't change to
		 * truncate possible preallocated blocks.
		 */
		if (attr->ia_size <= oldsize) {
			rc = FUNC29(inode);
			if (rc)
				error = rc;
		}
out_mmap_sem:
		FUNC47(&FUNC0(inode)->i_mmap_sem);
	}

	if (!error) {
		FUNC41(inode, attr);
		FUNC38(inode);
	}

	/*
	 * If the call to ext4_truncate failed to get a transaction handle at
	 * all, we need to clean up the in-core orphan list manually.
	 */
	if (orphan && inode->i_nlink)
		FUNC24(NULL, inode);

	if (!error && (ia_valid & ATTR_MODE))
		rc = FUNC40(inode, inode->i_mode);

err_out:
	FUNC27(inode->i_sb, error);
	if (!error)
		error = rc;
	return error;
}