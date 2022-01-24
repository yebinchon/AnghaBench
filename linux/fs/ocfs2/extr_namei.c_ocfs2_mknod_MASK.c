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
typedef  int /*<<< orphan*/  umode_t ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_security_xattr_info {int enable; int /*<<< orphan*/  value; } ;
struct ocfs2_dir_lookup_result {int /*<<< orphan*/ * member_0; } ;
struct ocfs2_dinode {int dummy; } ;
struct ocfs2_dentry_lock {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {struct ocfs2_dentry_lock* d_fsdata; TYPE_1__ d_name; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  struct inode handle_t ;
typedef  scalar_t__ dev_t ;
struct TYPE_4__ {int /*<<< orphan*/  ip_flags; scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int EMLINK ; 
 int ENOENT ; 
 int ENOSPC ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INODE_SKIP_ORPHAN_DIR ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*,struct inode*) ; 
 int FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int FUNC17 (struct inode*,struct dentry*,struct inode*,scalar_t__,struct buffer_head*,struct ocfs2_dir_lookup_result*) ; 
 int /*<<< orphan*/  FUNC18 (struct ocfs2_dinode*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (struct inode*,struct buffer_head*,int /*<<< orphan*/ ,struct ocfs2_security_xattr_info*,int*,int*,int*) ; 
 int FUNC21 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct ocfs2_super*,struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC23 (struct ocfs2_super*,struct inode*) ; 
 int FUNC24 (struct dentry*,struct inode*,scalar_t__) ; 
 int FUNC25 (struct ocfs2_super*,struct inode*,struct inode*,struct inode*,struct buffer_head*,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC26 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC27 (struct ocfs2_dir_lookup_result*) ; 
 struct inode* FUNC28 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC29 (struct inode*,struct inode*,struct inode*,struct buffer_head*,struct buffer_head*,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*) ; 
 int FUNC30 (struct inode*,struct inode*,TYPE_1__*,struct ocfs2_security_xattr_info*) ; 
 int FUNC31 (struct inode*,struct inode*,struct buffer_head*,struct ocfs2_security_xattr_info*,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*) ; 
 int FUNC32 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC33 (struct inode*,int) ; 
 int FUNC34 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (struct inode*,struct buffer_head*) ; 
 scalar_t__ FUNC36 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC38 (struct ocfs2_super*,struct inode*,struct inode*,scalar_t__,struct buffer_head**,struct buffer_head*,struct inode*,struct ocfs2_alloc_context*) ; 
 int FUNC39 (struct ocfs2_super*,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_dir_lookup_result*) ; 
 int /*<<< orphan*/  FUNC40 (struct ocfs2_dinode*) ; 
 int FUNC41 (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ; 
 int FUNC42 (struct ocfs2_super*,struct ocfs2_alloc_context**) ; 
 int FUNC43 (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ; 
 struct inode* FUNC44 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC45 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC46 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC48 (struct inode*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC49(struct inode *dir,
		       struct dentry *dentry,
		       umode_t mode,
		       dev_t dev)
{
	int status = 0;
	struct buffer_head *parent_fe_bh = NULL;
	handle_t *handle = NULL;
	struct ocfs2_super *osb;
	struct ocfs2_dinode *dirfe;
	struct buffer_head *new_fe_bh = NULL;
	struct inode *inode = NULL;
	struct ocfs2_alloc_context *inode_ac = NULL;
	struct ocfs2_alloc_context *data_ac = NULL;
	struct ocfs2_alloc_context *meta_ac = NULL;
	int want_clusters = 0;
	int want_meta = 0;
	int xattr_credits = 0;
	struct ocfs2_security_xattr_info si = {
		.enable = 1,
	};
	int did_quota_inode = 0;
	struct ocfs2_dir_lookup_result lookup = { NULL, };
	sigset_t oldset;
	int did_block_signals = 0;
	struct ocfs2_dentry_lock *dl = NULL;

	FUNC48(dir, dentry, dentry->d_name.len, dentry->d_name.name,
			  (unsigned long long)FUNC2(dir)->ip_blkno,
			  (unsigned long)dev, mode);

	status = FUNC11(dir);
	if (status) {
		FUNC16(status);
		return status;
	}

	/* get our super block */
	osb = FUNC3(dir->i_sb);

	status = FUNC32(dir, &parent_fe_bh, 1);
	if (status < 0) {
		if (status != -ENOENT)
			FUNC16(status);
		return status;
	}

	if (FUNC5(mode) && (dir->i_nlink >= FUNC36(osb))) {
		status = -EMLINK;
		goto leave;
	}

	dirfe = (struct ocfs2_dinode *) parent_fe_bh->b_data;
	if (!FUNC40(dirfe)) {
		/* can't make a file in a deleted directory. */
		status = -ENOENT;
		goto leave;
	}

	status = FUNC21(dir, dentry->d_name.name,
					   dentry->d_name.len);
	if (status)
		goto leave;

	/* get a spot inside the dir. */
	status = FUNC39(osb, dir, parent_fe_bh,
					      dentry->d_name.name,
					      dentry->d_name.len, &lookup);
	if (status < 0) {
		FUNC16(status);
		goto leave;
	}

	/* reserve an inode spot */
	status = FUNC42(osb, &inode_ac);
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC16(status);
		goto leave;
	}

	inode = FUNC28(dir, mode);
	if (FUNC1(inode)) {
		status = FUNC4(inode);
		inode = NULL;
		FUNC16(status);
		goto leave;
	}

	/* get security xattr */
	status = FUNC30(inode, dir, &dentry->d_name, &si);
	if (status) {
		if (status == -EOPNOTSUPP)
			si.enable = 0;
		else {
			FUNC16(status);
			goto leave;
		}
	}

	/* calculate meta data/clusters for setting security and acl xattr */
	status = FUNC20(dir, parent_fe_bh, mode,
				       &si, &want_clusters,
				       &xattr_credits, &want_meta);
	if (status < 0) {
		FUNC16(status);
		goto leave;
	}

	/* Reserve a cluster if creating an extent based directory. */
	if (FUNC5(mode) && !FUNC46(osb)) {
		want_clusters += 1;

		/* Dir indexing requires extra space as well */
		if (FUNC45(osb))
			want_meta++;
	}

	status = FUNC43(osb, want_meta, &meta_ac);
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC16(status);
		goto leave;
	}

	status = FUNC41(osb, want_clusters, &data_ac);
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC16(status);
		goto leave;
	}

	handle = FUNC44(osb, FUNC37(osb->sb,
							    FUNC5(mode),
							    xattr_credits));
	if (FUNC1(handle)) {
		status = FUNC4(handle);
		handle = NULL;
		FUNC16(status);
		goto leave;
	}

	/* Starting to change things, restart is no longer possible. */
	FUNC19(&oldset);
	did_block_signals = 1;

	status = FUNC9(inode);
	if (status)
		goto leave;
	did_quota_inode = 1;

	/* do the real work now. */
	status = FUNC38(osb, dir, inode, dev,
				    &new_fe_bh, parent_fe_bh, handle,
				    inode_ac);
	if (status < 0) {
		FUNC16(status);
		goto leave;
	}

	if (FUNC5(mode)) {
		status = FUNC25(osb, handle, dir, inode,
					    new_fe_bh, data_ac, meta_ac);
		if (status < 0) {
			FUNC16(status);
			goto leave;
		}

		status = FUNC34(handle, FUNC0(dir),
						 parent_fe_bh,
						 OCFS2_JOURNAL_ACCESS_WRITE);
		if (status < 0) {
			FUNC16(status);
			goto leave;
		}
		FUNC18(dirfe, 1);
		FUNC35(handle, parent_fe_bh);
		FUNC12(dir);
	}

	status = FUNC29(handle, inode, dir, new_fe_bh, parent_fe_bh,
			 meta_ac, data_ac);

	if (status < 0) {
		FUNC16(status);
		goto leave;
	}

	if (si.enable) {
		status = FUNC31(handle, inode, new_fe_bh, &si,
						 meta_ac, data_ac);
		if (status < 0) {
			FUNC16(status);
			goto leave;
		}
	}

	/*
	 * Do this before adding the entry to the directory. We add
	 * also set d_op after success so that ->d_iput() will cleanup
	 * the dentry lock even if ocfs2_add_entry() fails below.
	 */
	status = FUNC24(dentry, inode,
					  FUNC2(dir)->ip_blkno);
	if (status) {
		FUNC16(status);
		goto leave;
	}

	dl = dentry->d_fsdata;

	status = FUNC17(handle, dentry, inode,
				 FUNC2(inode)->ip_blkno, parent_fe_bh,
				 &lookup);
	if (status < 0) {
		FUNC16(status);
		goto leave;
	}

	FUNC13(inode);
	FUNC8(dentry, inode);
	status = 0;
leave:
	if (status < 0 && did_quota_inode)
		FUNC10(inode);
	if (handle)
		FUNC23(osb, handle);

	FUNC33(dir, 1);
	if (did_block_signals)
		FUNC47(&oldset);

	FUNC6(new_fe_bh);
	FUNC6(parent_fe_bh);
	FUNC15(si.value);

	FUNC27(&lookup);

	if (inode_ac)
		FUNC26(inode_ac);

	if (data_ac)
		FUNC26(data_ac);

	if (meta_ac)
		FUNC26(meta_ac);

	/*
	 * We should call iput after the i_mutex of the bitmap been
	 * unlocked in ocfs2_free_alloc_context, or the
	 * ocfs2_delete_inode will mutex_lock again.
	 */
	if ((status < 0) && inode) {
		if (dl)
			FUNC22(osb, dentry, inode);

		FUNC2(inode)->ip_flags |= OCFS2_INODE_SKIP_ORPHAN_DIR;
		FUNC7(inode);
		FUNC14(inode);
	}

	if (status)
		FUNC16(status);

	return status;
}