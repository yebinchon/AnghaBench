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
struct reiserfs_transaction_handle {int dummy; } ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct iattr {unsigned int ia_valid; scalar_t__ ia_size; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_prealloc_count; int /*<<< orphan*/  tailpack; } ;

/* Variables and functions */
 int ATTR_CTIME ; 
 unsigned int ATTR_GID ; 
 unsigned int ATTR_KILL_SGID ; 
 unsigned int ATTR_KILL_SUID ; 
 int ATTR_MODE ; 
 int ATTR_MTIME ; 
 int ATTR_SIZE ; 
 unsigned int ATTR_UID ; 
 int EFBIG ; 
 int EINVAL ; 
 scalar_t__ KEY_FORMAT_3_5 ; 
 scalar_t__ MAX_NON_LFS ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ STAT_DATA_V1 ; 
 struct inode* FUNC3 (struct dentry*) ; 
 int FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*,struct iattr*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int FUNC14 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC15 (struct inode*,struct iattr*) ; 
 int FUNC16 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (struct reiserfs_transaction_handle*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (struct inode*) ; 
 int FUNC22 (struct inode*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC23 (struct reiserfs_transaction_handle*,struct inode*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*,struct iattr*) ; 
 int FUNC29 (struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC30 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC32(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = FUNC3(dentry);
	unsigned int ia_valid;
	int error;

	error = FUNC29(dentry, attr);
	if (error)
		return error;

	/* must be turned off for recursive notify_change calls */
	ia_valid = attr->ia_valid &= ~(ATTR_KILL_SUID|ATTR_KILL_SGID);

	if (FUNC15(inode, attr)) {
		error = FUNC4(inode);
		if (error)
			return error;
	}
	FUNC26(inode->i_sb);
	if (attr->ia_valid & ATTR_SIZE) {
		/*
		 * version 2 items will be caught by the s_maxbytes check
		 * done for us in vmtruncate
		 */
		if (FUNC9(inode) == KEY_FORMAT_3_5 &&
		    attr->ia_size > MAX_NON_LFS) {
			FUNC27(inode->i_sb);
			error = -EFBIG;
			goto out;
		}

		FUNC13(inode);

		/* fill in hole pointers in the expanding truncate case. */
		if (attr->ia_size > inode->i_size) {
			error = FUNC8(inode, attr->ia_size);
			if (FUNC0(inode)->i_prealloc_count > 0) {
				int err;
				struct reiserfs_transaction_handle th;
				/* we're changing at most 2 bitmaps, inode + super */
				err = FUNC16(&th, inode->i_sb, 4);
				if (!err) {
					FUNC23(&th, inode);
					err = FUNC17(&th);
				}
				if (err)
					error = err;
			}
			if (error) {
				FUNC27(inode->i_sb);
				goto out;
			}
			/*
			 * file size is changed, ctime and mtime are
			 * to be updated
			 */
			attr->ia_valid |= (ATTR_MTIME | ATTR_CTIME);
		}
	}
	FUNC27(inode->i_sb);

	if ((((attr->ia_valid & ATTR_UID) && (FUNC7(&init_user_ns, attr->ia_uid) & ~0xffff)) ||
	     ((attr->ia_valid & ATTR_GID) && (FUNC6(&init_user_ns, attr->ia_gid) & ~0xffff))) &&
	    (FUNC10(inode) == STAT_DATA_V1)) {
		/* stat data of format v3.5 has 16 bit uid and gid */
		error = -EINVAL;
		goto out;
	}

	if ((ia_valid & ATTR_UID && !FUNC31(attr->ia_uid, inode->i_uid)) ||
	    (ia_valid & ATTR_GID && !FUNC11(attr->ia_gid, inode->i_gid))) {
		struct reiserfs_transaction_handle th;
		int jbegin_count =
		    2 *
		    (FUNC2(inode->i_sb) +
		     FUNC1(inode->i_sb)) +
		    2;

		error = FUNC22(inode, attr);

		if (error)
			return error;

		/*
		 * (user+group)*(old+new) structure - we count quota
		 * info and , inode write (sb, inode)
		 */
		FUNC26(inode->i_sb);
		error = FUNC16(&th, inode->i_sb, jbegin_count);
		FUNC27(inode->i_sb);
		if (error)
			goto out;
		error = FUNC5(inode, attr);
		FUNC26(inode->i_sb);
		if (error) {
			FUNC17(&th);
			FUNC27(inode->i_sb);
			goto out;
		}

		/*
		 * Update corresponding info in inode so that everything
		 * is in one transaction
		 */
		if (attr->ia_valid & ATTR_UID)
			inode->i_uid = attr->ia_uid;
		if (attr->ia_valid & ATTR_GID)
			inode->i_gid = attr->ia_gid;
		FUNC18(inode);
		error = FUNC17(&th);
		FUNC27(inode->i_sb);
		if (error)
			goto out;
	}

	if ((attr->ia_valid & ATTR_SIZE) &&
	    attr->ia_size != FUNC12(inode)) {
		error = FUNC14(inode, attr->ia_size);
		if (!error) {
			/*
			 * Could race against reiserfs_file_release
			 * if called from NFS, so take tailpack mutex.
			 */
			FUNC19(&FUNC0(inode)->tailpack);
			FUNC30(inode, attr->ia_size);
			FUNC25(inode, 1);
			FUNC20(&FUNC0(inode)->tailpack);
		}
	}

	if (!error) {
		FUNC28(inode, attr);
		FUNC18(inode);
	}

	if (!error && FUNC24(inode->i_sb)) {
		if (attr->ia_valid & ATTR_MODE)
			error = FUNC21(inode);
	}

out:
	return error;
}