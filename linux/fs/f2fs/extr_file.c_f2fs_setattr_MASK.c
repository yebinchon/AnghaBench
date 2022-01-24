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
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; } ;
struct dentry {int dummy; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_acl_mode; int /*<<< orphan*/  i_sem; void* last_disk_size; int /*<<< orphan*/ * i_gc_rwsem; int /*<<< orphan*/  i_mmap_sem; } ;

/* Variables and functions */
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_SIZE ; 
 int ATTR_UID ; 
 int EIO ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FI_ACL_MODE ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  SBI_QUOTA_NEED_REPAIR ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct inode* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int) ; 
 int FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (struct dentry*,struct iattr*) ; 
 int FUNC19 (struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC21 (struct inode*) ; 
 scalar_t__ FUNC22 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (struct inode*,struct iattr*) ; 
 int FUNC24 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC27 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 

int FUNC31(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = FUNC6(dentry);
	int err;

	if (FUNC29(FUNC12(FUNC1(inode))))
		return -EIO;

	err = FUNC26(dentry, attr);
	if (err)
		return err;

	err = FUNC18(dentry, attr);
	if (err)
		return err;

	err = FUNC19(dentry, attr);
	if (err)
		return err;

	if (FUNC23(inode, attr)) {
		err = FUNC8(inode);
		if (err)
			return err;
	}
	if ((attr->ia_valid & ATTR_UID &&
		!FUNC28(attr->ia_uid, inode->i_uid)) ||
		(attr->ia_valid & ATTR_GID &&
		!FUNC20(attr->ia_gid, inode->i_gid))) {
		FUNC14(FUNC1(inode));
		err = FUNC9(inode, attr);
		if (err) {
			FUNC25(FUNC1(inode),
					SBI_QUOTA_NEED_REPAIR);
			FUNC17(FUNC1(inode));
			return err;
		}
		/*
		 * update uid/gid under lock_op(), so that dquot and inode can
		 * be updated atomically.
		 */
		if (attr->ia_valid & ATTR_UID)
			inode->i_uid = attr->ia_uid;
		if (attr->ia_valid & ATTR_GID)
			inode->i_gid = attr->ia_gid;
		FUNC15(inode, true);
		FUNC17(FUNC1(inode));
	}

	if (attr->ia_valid & ATTR_SIZE) {
		loff_t old_size = FUNC21(inode);

		if (attr->ia_size > FUNC2(inode)) {
			/*
			 * should convert inline inode before i_size_write to
			 * keep smaller than inline_data size with inline flag.
			 */
			err = FUNC11(inode);
			if (err)
				return err;
		}

		FUNC7(&FUNC0(inode)->i_gc_rwsem[WRITE]);
		FUNC7(&FUNC0(inode)->i_mmap_sem);

		FUNC27(inode, attr->ia_size);

		if (attr->ia_size <= old_size)
			err = FUNC16(inode);
		/*
		 * do not trim all blocks after i_size if target size is
		 * larger than i_size.
		 */
		FUNC30(&FUNC0(inode)->i_mmap_sem);
		FUNC30(&FUNC0(inode)->i_gc_rwsem[WRITE]);
		if (err)
			return err;

		FUNC7(&FUNC0(inode)->i_sem);
		inode->i_mtime = inode->i_ctime = FUNC5(inode);
		FUNC0(inode)->last_disk_size = FUNC21(inode);
		FUNC30(&FUNC0(inode)->i_sem);
	}

	FUNC3(inode, attr);

	if (attr->ia_valid & ATTR_MODE) {
		err = FUNC24(inode, FUNC13(inode));
		if (err || FUNC22(inode, FI_ACL_MODE)) {
			inode->i_mode = FUNC0(inode)->i_acl_mode;
			FUNC4(inode, FI_ACL_MODE);
		}
	}

	/* file size may changed here */
	FUNC15(inode, true);

	/* inode change will produce dirty node pages flushed by checkpoint */
	FUNC10(FUNC1(inode), true);

	return err;
}