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
struct TYPE_3__ {scalar_t__ quiet; int /*<<< orphan*/  fs_gid; int /*<<< orphan*/  fs_uid; } ;
struct msdos_sb_info {TYPE_1__ options; } ;
struct inode {scalar_t__ i_size; } ;
struct iattr {unsigned int ia_valid; scalar_t__ ia_size; int ia_mode; int /*<<< orphan*/  ia_mtime; int /*<<< orphan*/  ia_ctime; int /*<<< orphan*/  ia_atime; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  truncate_lock; } ;

/* Variables and functions */
 int ATTR_ATIME ; 
 int ATTR_CTIME ; 
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_MTIME ; 
 int ATTR_SIZE ; 
 int ATTR_UID ; 
 int EPERM ; 
 int FAT_VALID_MODE ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 struct msdos_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_ATIME ; 
 int /*<<< orphan*/  S_CTIME ; 
 int /*<<< orphan*/  S_MTIME ; 
 unsigned int TIMES_SET_FLAGS ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct msdos_sb_info*,struct inode*) ; 
 int FUNC5 (struct inode*,scalar_t__) ; 
 int FUNC6 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC7 (struct msdos_sb_info*,struct inode*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,struct iattr*) ; 
 int FUNC14 (struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

int FUNC18(struct dentry *dentry, struct iattr *attr)
{
	struct msdos_sb_info *sbi = FUNC1(dentry->d_sb);
	struct inode *inode = FUNC2(dentry);
	unsigned int ia_valid;
	int error;

	/* Check for setting the inode time. */
	ia_valid = attr->ia_valid;
	if (ia_valid & TIMES_SET_FLAGS) {
		if (FUNC4(sbi, inode))
			attr->ia_valid &= ~TIMES_SET_FLAGS;
	}

	error = FUNC14(dentry, attr);
	attr->ia_valid = ia_valid;
	if (error) {
		if (sbi->options.quiet)
			error = 0;
		goto out;
	}

	/*
	 * Expand the file. Since inode_setattr() updates ->i_size
	 * before calling the ->truncate(), but FAT needs to fill the
	 * hole before it. XXX: this is no longer true with new truncate
	 * sequence.
	 */
	if (attr->ia_valid & ATTR_SIZE) {
		FUNC11(inode);

		if (attr->ia_size > inode->i_size) {
			error = FUNC6(inode, attr->ia_size);
			if (error || attr->ia_valid == ATTR_SIZE)
				goto out;
			attr->ia_valid &= ~ATTR_SIZE;
		}
	}

	if (((attr->ia_valid & ATTR_UID) &&
	     (!FUNC16(attr->ia_uid, sbi->options.fs_uid))) ||
	    ((attr->ia_valid & ATTR_GID) &&
	     (!FUNC10(attr->ia_gid, sbi->options.fs_gid))) ||
	    ((attr->ia_valid & ATTR_MODE) &&
	     (attr->ia_mode & ~FAT_VALID_MODE)))
		error = -EPERM;

	if (error) {
		if (sbi->options.quiet)
			error = 0;
		goto out;
	}

	/*
	 * We don't return -EPERM here. Yes, strange, but this is too
	 * old behavior.
	 */
	if (attr->ia_valid & ATTR_MODE) {
		if (FUNC7(sbi, inode, &attr->ia_mode) < 0)
			attr->ia_valid &= ~ATTR_MODE;
	}

	if (attr->ia_valid & ATTR_SIZE) {
		error = FUNC5(inode, attr->ia_size);
		if (error)
			goto out;
		FUNC3(&FUNC0(inode)->truncate_lock);
		FUNC15(inode, attr->ia_size);
		FUNC8(inode, attr->ia_size);
		FUNC17(&FUNC0(inode)->truncate_lock);
	}

	/*
	 * setattr_copy can't truncate these appropriately, so we'll
	 * copy them ourselves
	 */
	if (attr->ia_valid & ATTR_ATIME)
		FUNC9(inode, &attr->ia_atime, S_ATIME);
	if (attr->ia_valid & ATTR_CTIME)
		FUNC9(inode, &attr->ia_ctime, S_CTIME);
	if (attr->ia_valid & ATTR_MTIME)
		FUNC9(inode, &attr->ia_mtime, S_MTIME);
	attr->ia_valid &= ~(ATTR_ATIME|ATTR_CTIME|ATTR_MTIME);

	FUNC13(inode, attr);
	FUNC12(inode);
out:
	return error;
}