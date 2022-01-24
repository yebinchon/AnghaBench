#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_security_xattr_info {int enable; int /*<<< orphan*/  value; } ;
struct ocfs2_dir_lookup_result {int /*<<< orphan*/ * member_0; } ;
struct TYPE_6__ {scalar_t__ i_symlink; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_blkno; TYPE_2__ id2; } ;
struct ocfs2_dentry_lock {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {scalar_t__ i_blocks; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_op; scalar_t__ i_rdev; int /*<<< orphan*/  i_mode; struct super_block* i_sb; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {struct ocfs2_dentry_lock* d_fsdata; TYPE_3__ d_name; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  struct inode handle_t ;
struct TYPE_8__ {int /*<<< orphan*/  ip_flags; scalar_t__ ip_blkno; } ;
struct TYPE_5__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int EINTR ; 
 int ENOENT ; 
 int ENOSPC ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 TYPE_4__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INODE_SKIP_ORPHAN_DIR ; 
 struct ocfs2_super* FUNC2 (struct super_block*) ; 
 int FUNC3 (struct inode*) ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*,struct inode*) ; 
 int FUNC7 (struct inode*) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int FUNC21 (struct inode*,struct dentry*,struct inode*,int /*<<< orphan*/ ,struct buffer_head*,struct ocfs2_dir_lookup_result*) ; 
 int FUNC22 (struct ocfs2_super*,struct inode*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct buffer_head*,struct inode*,struct ocfs2_alloc_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ocfs2_aops ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (struct inode*,struct ocfs2_security_xattr_info*,int*,int*,struct ocfs2_alloc_context**) ; 
 int FUNC25 (struct super_block*) ; 
 int FUNC26 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct ocfs2_super*,struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 (struct ocfs2_super*,struct inode*) ; 
 int FUNC30 (struct ocfs2_super*,struct inode*,struct inode*,char const*) ; 
 int FUNC31 (struct dentry*,struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  ocfs2_fast_symlink_aops ; 
 int FUNC32 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC33 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC34 (struct ocfs2_dir_lookup_result*) ; 
 struct inode* FUNC35 (struct inode*,int) ; 
 int FUNC36 (struct inode*,struct inode*,TYPE_3__*,struct ocfs2_security_xattr_info*) ; 
 int FUNC37 (struct inode*,struct inode*,struct buffer_head*,struct ocfs2_security_xattr_info*,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC38 (struct inode*) ; 
 int FUNC39 (struct inode*,struct buffer_head**,int) ; 
 scalar_t__ FUNC40 (struct inode*) ; 
 int /*<<< orphan*/  FUNC41 (struct inode*,int) ; 
 int FUNC42 (struct inode*,struct inode*,struct buffer_head*) ; 
 int FUNC43 (struct ocfs2_super*,struct inode*,struct inode*,int /*<<< orphan*/ ,struct buffer_head**,struct buffer_head*,struct inode*,struct ocfs2_alloc_context*) ; 
 int FUNC44 (struct ocfs2_super*,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_dir_lookup_result*) ; 
 int /*<<< orphan*/  FUNC45 (struct ocfs2_dinode*) ; 
 int FUNC46 (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ; 
 int FUNC47 (struct ocfs2_super*,struct ocfs2_alloc_context**) ; 
 struct inode* FUNC48 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  ocfs2_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ *) ; 
 int FUNC50 (char const*) ; 
 int /*<<< orphan*/  FUNC51 (struct inode*,struct dentry*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC52 (struct inode*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC53(struct inode *dir,
			 struct dentry *dentry,
			 const char *symname)
{
	int status, l, credits;
	u64 newsize;
	struct ocfs2_super *osb = NULL;
	struct inode *inode = NULL;
	struct super_block *sb;
	struct buffer_head *new_fe_bh = NULL;
	struct buffer_head *parent_fe_bh = NULL;
	struct ocfs2_dinode *fe = NULL;
	struct ocfs2_dinode *dirfe;
	handle_t *handle = NULL;
	struct ocfs2_alloc_context *inode_ac = NULL;
	struct ocfs2_alloc_context *data_ac = NULL;
	struct ocfs2_alloc_context *xattr_ac = NULL;
	int want_clusters = 0;
	int xattr_credits = 0;
	struct ocfs2_security_xattr_info si = {
		.enable = 1,
	};
	int did_quota = 0, did_quota_inode = 0;
	struct ocfs2_dir_lookup_result lookup = { NULL, };
	sigset_t oldset;
	int did_block_signals = 0;
	struct ocfs2_dentry_lock *dl = NULL;

	FUNC51(dir, dentry, symname,
				  dentry->d_name.len, dentry->d_name.name);

	status = FUNC11(dir);
	if (status) {
		FUNC20(status);
		goto bail;
	}

	sb = dir->i_sb;
	osb = FUNC2(sb);

	l = FUNC50(symname) + 1;

	credits = FUNC25(sb);

	/* lock the parent directory */
	status = FUNC39(dir, &parent_fe_bh, 1);
	if (status < 0) {
		if (status != -ENOENT)
			FUNC20(status);
		return status;
	}

	dirfe = (struct ocfs2_dinode *) parent_fe_bh->b_data;
	if (!FUNC45(dirfe)) {
		/* can't make a file in a deleted directory. */
		status = -ENOENT;
		goto bail;
	}

	status = FUNC26(dir, dentry->d_name.name,
					   dentry->d_name.len);
	if (status)
		goto bail;

	status = FUNC44(osb, dir, parent_fe_bh,
					      dentry->d_name.name,
					      dentry->d_name.len, &lookup);
	if (status < 0) {
		FUNC20(status);
		goto bail;
	}

	status = FUNC47(osb, &inode_ac);
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC20(status);
		goto bail;
	}

	inode = FUNC35(dir, S_IFLNK | S_IRWXUGO);
	if (FUNC0(inode)) {
		status = FUNC3(inode);
		inode = NULL;
		FUNC20(status);
		goto bail;
	}

	/* get security xattr */
	status = FUNC36(inode, dir, &dentry->d_name, &si);
	if (status) {
		if (status == -EOPNOTSUPP)
			si.enable = 0;
		else {
			FUNC20(status);
			goto bail;
		}
	}

	/* calculate meta data/clusters for setting security xattr */
	if (si.enable) {
		status = FUNC24(dir, &si, &want_clusters,
						  &xattr_credits, &xattr_ac);
		if (status < 0) {
			FUNC20(status);
			goto bail;
		}
	}

	/* don't reserve bitmap space for fast symlinks. */
	if (l > FUNC32(sb))
		want_clusters += 1;

	status = FUNC46(osb, want_clusters, &data_ac);
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC20(status);
		goto bail;
	}

	handle = FUNC48(osb, credits + xattr_credits);
	if (FUNC0(handle)) {
		status = FUNC3(handle);
		handle = NULL;
		FUNC20(status);
		goto bail;
	}

	/* Starting to change things, restart is no longer possible. */
	FUNC23(&oldset);
	did_block_signals = 1;

	status = FUNC7(inode);
	if (status)
		goto bail;
	did_quota_inode = 1;

	FUNC52(dir, dentry, dentry->d_name.len,
				   dentry->d_name.name,
				   (unsigned long long)FUNC1(dir)->ip_blkno,
				   inode->i_mode);

	status = FUNC43(osb, dir, inode,
				    0, &new_fe_bh, parent_fe_bh, handle,
				    inode_ac);
	if (status < 0) {
		FUNC20(status);
		goto bail;
	}

	fe = (struct ocfs2_dinode *) new_fe_bh->b_data;
	inode->i_rdev = 0;
	newsize = l - 1;
	inode->i_op = &ocfs2_symlink_inode_operations;
	FUNC13(inode);
	if (l > FUNC32(sb)) {
		u32 offset = 0;

		status = FUNC8(inode,
		    FUNC28(osb->sb, 1));
		if (status)
			goto bail;
		did_quota = 1;
		inode->i_mapping->a_ops = &ocfs2_aops;
		status = FUNC22(osb, inode, &offset, 1, 0,
					      new_fe_bh,
					      handle, data_ac, NULL,
					      NULL);
		if (status < 0) {
			if (status != -ENOSPC && status != -EINTR) {
				FUNC19(ML_ERROR,
				     "Failed to extend file to %llu\n",
				     (unsigned long long)newsize);
				FUNC20(status);
				status = -ENOSPC;
			}
			goto bail;
		}
		FUNC12(inode, newsize);
		inode->i_blocks = FUNC40(inode);
	} else {
		inode->i_mapping->a_ops = &ocfs2_fast_symlink_aops;
		FUNC18((char *) fe->id2.i_symlink, symname, l);
		FUNC12(inode, newsize);
		inode->i_blocks = 0;
	}

	status = FUNC42(handle, inode, new_fe_bh);
	if (status < 0) {
		FUNC20(status);
		goto bail;
	}

	if (!FUNC38(inode)) {
		status = FUNC30(osb, handle, inode,
						   symname);
		if (status < 0) {
			FUNC20(status);
			goto bail;
		}
	}

	if (si.enable) {
		status = FUNC37(handle, inode, new_fe_bh, &si,
						 xattr_ac, data_ac);
		if (status < 0) {
			FUNC20(status);
			goto bail;
		}
	}

	/*
	 * Do this before adding the entry to the directory. We add
	 * also set d_op after success so that ->d_iput() will cleanup
	 * the dentry lock even if ocfs2_add_entry() fails below.
	 */
	status = FUNC31(dentry, inode, FUNC1(dir)->ip_blkno);
	if (status) {
		FUNC20(status);
		goto bail;
	}

	dl = dentry->d_fsdata;

	status = FUNC21(handle, dentry, inode,
				 FUNC17(fe->i_blkno), parent_fe_bh,
				 &lookup);
	if (status < 0) {
		FUNC20(status);
		goto bail;
	}

	FUNC14(inode);
	FUNC6(dentry, inode);
bail:
	if (status < 0 && did_quota)
		FUNC10(inode,
					FUNC28(osb->sb, 1));
	if (status < 0 && did_quota_inode)
		FUNC9(inode);
	if (handle)
		FUNC29(osb, handle);

	FUNC41(dir, 1);
	if (did_block_signals)
		FUNC49(&oldset);

	FUNC4(new_fe_bh);
	FUNC4(parent_fe_bh);
	FUNC16(si.value);
	FUNC34(&lookup);
	if (inode_ac)
		FUNC33(inode_ac);
	if (data_ac)
		FUNC33(data_ac);
	if (xattr_ac)
		FUNC33(xattr_ac);
	if ((status < 0) && inode) {
		if (dl)
			FUNC27(osb, dentry, inode);

		FUNC1(inode)->ip_flags |= OCFS2_INODE_SKIP_ORPHAN_DIR;
		FUNC5(inode);
		FUNC15(inode);
	}

	if (status)
		FUNC20(status);

	return status;
}