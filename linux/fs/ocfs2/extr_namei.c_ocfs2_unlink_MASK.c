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
typedef  scalar_t__ u64 ;
struct ocfs2_super {int /*<<< orphan*/  sb; struct inode* root_inode; } ;
struct ocfs2_dir_lookup_result {int /*<<< orphan*/ * member_0; } ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int i_nlink; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; struct dentry* d_parent; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {scalar_t__ ip_blkno; int /*<<< orphan*/  ip_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  OCFS2_ORPHAN_NAMELEN ; 
 struct ocfs2_super* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OI_LS_PARENT ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 struct inode* FUNC9 (struct dentry*) ; 
 int FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,struct inode*,struct ocfs2_dir_lookup_result*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,struct inode*,struct ocfs2_dir_lookup_result*) ; 
 int /*<<< orphan*/  FUNC20 (struct ocfs2_dir_lookup_result*) ; 
 scalar_t__ FUNC21 (struct inode*) ; 
 int FUNC22 (struct inode*,struct buffer_head**,int) ; 
 int FUNC23 (struct inode*,struct buffer_head**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*,int) ; 
 int FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC27 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 int FUNC28 (struct ocfs2_super*,int /*<<< orphan*/ *,struct inode*,struct buffer_head*,char*,struct ocfs2_dir_lookup_result*,struct inode*,int) ; 
 int FUNC29 (struct ocfs2_super*,struct inode**,scalar_t__,char*,struct ocfs2_dir_lookup_result*,int) ; 
 int FUNC30 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC31 (struct ocfs2_dinode*,int) ; 
 int /*<<< orphan*/ * FUNC32 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct inode*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC35 (unsigned long long,unsigned long long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC36(struct inode *dir,
			struct dentry *dentry)
{
	int status;
	int child_locked = 0;
	bool is_unlinkable = false;
	struct inode *inode = FUNC9(dentry);
	struct inode *orphan_dir = NULL;
	struct ocfs2_super *osb = FUNC4(dir->i_sb);
	u64 blkno;
	struct ocfs2_dinode *fe = NULL;
	struct buffer_head *fe_bh = NULL;
	struct buffer_head *parent_node_bh = NULL;
	handle_t *handle = NULL;
	char orphan_name[OCFS2_ORPHAN_NAMELEN + 1];
	struct ocfs2_dir_lookup_result lookup = { NULL, };
	struct ocfs2_dir_lookup_result orphan_insert = { NULL, };

	FUNC34(dir, dentry, dentry->d_name.len,
			   dentry->d_name.name,
			   (unsigned long long)FUNC3(dir)->ip_blkno,
			   (unsigned long long)FUNC3(inode)->ip_blkno);

	status = FUNC10(dir);
	if (status) {
		FUNC15(status);
		return status;
	}

	FUNC0(FUNC9(dentry->d_parent) != dir);

	if (inode == osb->root_inode)
		return -EPERM;

	status = FUNC23(dir, &parent_node_bh, 1,
					 OI_LS_PARENT);
	if (status < 0) {
		if (status != -ENOENT)
			FUNC15(status);
		return status;
	}

	status = FUNC19(dentry->d_name.name,
					  dentry->d_name.len, &blkno, dir,
					  &lookup);
	if (status < 0) {
		if (status != -ENOENT)
			FUNC15(status);
		goto leave;
	}

	if (FUNC3(inode)->ip_blkno != blkno) {
		status = -ENOENT;

		FUNC35(
				(unsigned long long)FUNC3(inode)->ip_blkno,
				(unsigned long long)blkno,
				FUNC3(inode)->ip_flags);
		goto leave;
	}

	status = FUNC22(inode, &fe_bh, 1);
	if (status < 0) {
		if (status != -ENOENT)
			FUNC15(status);
		goto leave;
	}
	child_locked = 1;

	if (FUNC6(inode->i_mode)) {
		if (inode->i_nlink != 2 || !FUNC18(inode)) {
			status = -ENOTEMPTY;
			goto leave;
		}
	}

	status = FUNC30(dentry);
	if (status < 0) {
		/* This remote delete should succeed under all normal
		 * circumstances. */
		FUNC15(status);
		goto leave;
	}

	if (FUNC21(inode)) {
		status = FUNC29(osb, &orphan_dir,
						  FUNC3(inode)->ip_blkno,
						  orphan_name, &orphan_insert,
						  false);
		if (status < 0) {
			FUNC15(status);
			goto leave;
		}
		is_unlinkable = true;
	}

	handle = FUNC32(osb, FUNC33(osb->sb));
	if (FUNC2(handle)) {
		status = FUNC5(handle);
		handle = NULL;
		FUNC15(status);
		goto leave;
	}

	status = FUNC25(handle, FUNC1(inode), fe_bh,
					 OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC15(status);
		goto leave;
	}

	fe = (struct ocfs2_dinode *) fe_bh->b_data;

	/* delete the name from the parent dir */
	status = FUNC17(handle, dir, &lookup);
	if (status < 0) {
		FUNC15(status);
		goto leave;
	}

	if (FUNC6(inode->i_mode))
		FUNC11(inode);
	FUNC11(inode);
	FUNC31(fe, inode->i_nlink);
	FUNC26(handle, fe_bh);

	dir->i_ctime = dir->i_mtime = FUNC8(dir);
	if (FUNC6(inode->i_mode))
		FUNC11(dir);

	status = FUNC27(handle, dir, parent_node_bh);
	if (status < 0) {
		FUNC15(status);
		if (FUNC6(inode->i_mode))
			FUNC12(dir);
		goto leave;
	}

	if (is_unlinkable) {
		status = FUNC28(osb, handle, inode, fe_bh,
				orphan_name, &orphan_insert, orphan_dir, false);
		if (status < 0)
			FUNC15(status);
	}

leave:
	if (handle)
		FUNC16(osb, handle);

	if (orphan_dir) {
		/* This was locked for us in ocfs2_prepare_orphan_dir() */
		FUNC24(orphan_dir, 1);
		FUNC13(orphan_dir);
		FUNC14(orphan_dir);
	}

	if (child_locked)
		FUNC24(inode, 1);

	FUNC24(dir, 1);

	FUNC7(fe_bh);
	FUNC7(parent_node_bh);

	FUNC20(&orphan_insert);
	FUNC20(&lookup);

	if (status && (status != -ENOTEMPTY) && (status != -ENOENT))
		FUNC15(status);

	return status;
}