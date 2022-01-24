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
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/  dealloc; scalar_t__ meta_ac; scalar_t__ data_ac; int /*<<< orphan*/  handle; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct ocfs2_xattr_search {int not_found; int /*<<< orphan*/  bucket; struct buffer_head* xattr_bh; struct buffer_head* inode_bh; } ;
struct ocfs2_xattr_info {int xi_name_index; char const* xi_name; void const* xi_value; size_t xi_value_len; int /*<<< orphan*/  xi_name_len; } ;
struct ocfs2_super {struct inode* osb_tl_inode; } ;
struct ocfs2_refcount_tree {int dummy; } ;
struct ocfs2_lock_holder {int dummy; } ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip_xattr_sem; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENODATA ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 scalar_t__ OCFS2_INODE_UPDATE_CREDITS ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int XATTR_CREATE ; 
 int XATTR_REPLACE ; 
 int FUNC4 (struct ocfs2_super*) ; 
 int FUNC5 (struct inode*,struct ocfs2_dinode*,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,struct ocfs2_xattr_search*,struct ocfs2_xattr_set_ctxt*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int FUNC14 (struct inode*,struct ocfs2_dinode*,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,struct ocfs2_xattr_search*,struct ocfs2_xattr_set_ctxt*,int,int*) ; 
 int FUNC15 (struct inode*,struct buffer_head**,int,struct ocfs2_lock_holder*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int,struct ocfs2_lock_holder*,int) ; 
 scalar_t__ FUNC17 (struct inode*) ; 
 int FUNC18 (struct inode*,struct ocfs2_dinode*,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,struct ocfs2_xattr_search*,struct ocfs2_refcount_tree**,int*,int*) ; 
 int /*<<< orphan*/  FUNC19 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct ocfs2_super*) ; 
 scalar_t__ FUNC23 (struct ocfs2_super*) ; 
 int FUNC24 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC25 (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct inode*,int,char const*,struct ocfs2_xattr_search*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct inode*) ; 
 int FUNC30 (struct inode*,int,char const*,struct ocfs2_xattr_search*) ; 
 int /*<<< orphan*/  FUNC31 (char const*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 

int FUNC33(struct inode *inode,
		    int name_index,
		    const char *name,
		    const void *value,
		    size_t value_len,
		    int flags)
{
	struct buffer_head *di_bh = NULL;
	struct ocfs2_dinode *di;
	int ret, credits, had_lock, ref_meta = 0, ref_credits = 0;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	struct inode *tl_inode = osb->osb_tl_inode;
	struct ocfs2_xattr_set_ctxt ctxt = { NULL, NULL, NULL, };
	struct ocfs2_refcount_tree *ref_tree = NULL;
	struct ocfs2_lock_holder oh;

	struct ocfs2_xattr_info xi = {
		.xi_name_index = name_index,
		.xi_name = name,
		.xi_name_len = FUNC31(name),
		.xi_value = value,
		.xi_value_len = value_len,
	};

	struct ocfs2_xattr_search xis = {
		.not_found = -ENODATA,
	};

	struct ocfs2_xattr_search xbs = {
		.not_found = -ENODATA,
	};

	if (!FUNC22(osb))
		return -EOPNOTSUPP;

	/*
	 * Only xbs will be used on indexed trees.  xis doesn't need a
	 * bucket.
	 */
	xbs.bucket = FUNC29(inode);
	if (!xbs.bucket) {
		FUNC10(-ENOMEM);
		return -ENOMEM;
	}

	had_lock = FUNC15(inode, &di_bh, 1, &oh);
	if (had_lock < 0) {
		ret = had_lock;
		FUNC10(ret);
		goto cleanup_nolock;
	}
	xis.inode_bh = xbs.inode_bh = di_bh;
	di = (struct ocfs2_dinode *)di_bh->b_data;

	FUNC7(&FUNC1(inode)->ip_xattr_sem);
	/*
	 * Scan inode and external block to find the same name
	 * extended attribute and collect search information.
	 */
	ret = FUNC30(inode, name_index, name, &xis);
	if (ret)
		goto cleanup;
	if (xis.not_found) {
		ret = FUNC27(inode, name_index, name, &xbs);
		if (ret)
			goto cleanup;
	}

	if (xis.not_found && xbs.not_found) {
		ret = -ENODATA;
		if (flags & XATTR_REPLACE)
			goto cleanup;
		ret = 0;
		if (!value)
			goto cleanup;
	} else {
		ret = -EEXIST;
		if (flags & XATTR_CREATE)
			goto cleanup;
	}

	/* Check whether the value is refcounted and do some preparation. */
	if (FUNC17(inode) &&
	    (!xis.not_found || !xbs.not_found)) {
		ret = FUNC18(inode, di, &xi,
						   &xis, &xbs, &ref_tree,
						   &ref_meta, &ref_credits);
		if (ret) {
			FUNC10(ret);
			goto cleanup;
		}
	}

	FUNC8(tl_inode);

	if (FUNC23(osb)) {
		ret = FUNC4(osb);
		if (ret < 0) {
			FUNC9(tl_inode);
			FUNC10(ret);
			goto cleanup;
		}
	}
	FUNC9(tl_inode);

	ret = FUNC14(inode, di, &xi, &xis,
					&xbs, &ctxt, ref_meta, &credits);
	if (ret) {
		FUNC10(ret);
		goto cleanup;
	}

	/* we need to update inode's ctime field, so add credit for it. */
	credits += OCFS2_INODE_UPDATE_CREDITS;
	ctxt.handle = FUNC21(osb, credits + ref_credits);
	if (FUNC0(ctxt.handle)) {
		ret = FUNC3(ctxt.handle);
		FUNC10(ret);
		goto out_free_ac;
	}

	ret = FUNC5(inode, di, &xi, &xis, &xbs, &ctxt);
	FUNC26(ctxt.handle, inode, 0);

	FUNC11(osb, ctxt.handle);

out_free_ac:
	if (ctxt.data_ac)
		FUNC13(ctxt.data_ac);
	if (ctxt.meta_ac)
		FUNC13(ctxt.meta_ac);
	if (FUNC12(&ctxt.dealloc))
		FUNC20(osb, 1);
	FUNC19(osb, &ctxt.dealloc);

cleanup:
	if (ref_tree)
		FUNC25(osb, ref_tree, 1);
	FUNC32(&FUNC1(inode)->ip_xattr_sem);
	if (!value && !ret) {
		ret = FUNC24(inode, di_bh);
		if (ret)
			FUNC10(ret);
	}
	FUNC16(inode, 1, &oh, had_lock);
cleanup_nolock:
	FUNC6(di_bh);
	FUNC6(xbs.xattr_bh);
	FUNC28(xbs.bucket);

	return ret;
}