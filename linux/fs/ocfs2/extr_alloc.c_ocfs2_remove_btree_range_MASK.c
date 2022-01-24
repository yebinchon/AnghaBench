#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_super {int /*<<< orphan*/  sb; struct inode* osb_tl_inode; } ;
struct ocfs2_refcount_tree {int dummy; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_root_bh; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int OCFS2_EXT_REFCOUNTED ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct ocfs2_super*,scalar_t__,int,struct ocfs2_refcount_tree**,int /*<<< orphan*/ *) ; 
 int FUNC20 (struct inode*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC21 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (struct inode*,struct ocfs2_extent_tree*,int,struct ocfs2_alloc_context**,int) ; 
 int /*<<< orphan*/ * FUNC24 (struct ocfs2_super*,scalar_t__) ; 
 int FUNC25 (struct ocfs2_super*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC27 (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,struct inode*,int) ; 

int FUNC29(struct inode *inode,
			     struct ocfs2_extent_tree *et,
			     u32 cpos, u32 phys_cpos, u32 len, int flags,
			     struct ocfs2_cached_dealloc_ctxt *dealloc,
			     u64 refcount_loc, bool refcount_tree_locked)
{
	int ret, credits = 0, extra_blocks = 0;
	u64 phys_blkno = FUNC10(inode->i_sb, phys_cpos);
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	struct inode *tl_inode = osb->osb_tl_inode;
	handle_t *handle;
	struct ocfs2_alloc_context *meta_ac = NULL;
	struct ocfs2_refcount_tree *ref_tree = NULL;

	if ((flags & OCFS2_EXT_REFCOUNTED) && len) {
		FUNC0(!FUNC17(inode));

		if (!refcount_tree_locked) {
			ret = FUNC19(osb, refcount_loc, 1,
						       &ref_tree, NULL);
			if (ret) {
				FUNC8(ret);
				goto bail;
			}
		}

		ret = FUNC20(inode,
							    refcount_loc,
							    phys_blkno,
							    len,
							    &credits,
							    &extra_blocks);
		if (ret < 0) {
			FUNC8(ret);
			goto bail;
		}
	}

	ret = FUNC23(inode, et, 1, &meta_ac,
						 extra_blocks);
	if (ret) {
		FUNC8(ret);
		goto bail;
	}

	FUNC6(tl_inode);

	if (FUNC26(osb)) {
		ret = FUNC4(osb);
		if (ret < 0) {
			FUNC8(ret);
			goto out;
		}
	}

	handle = FUNC24(osb,
			FUNC22(osb->sb) + credits);
	if (FUNC1(handle)) {
		ret = FUNC3(handle);
		FUNC8(ret);
		goto out;
	}

	ret = FUNC14(handle, et,
					   OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC8(ret);
		goto out_commit;
	}

	FUNC5(inode,
				  FUNC11(inode->i_sb, len));

	ret = FUNC21(handle, et, cpos, len, meta_ac, dealloc);
	if (ret) {
		FUNC8(ret);
		goto out_commit;
	}

	FUNC15(et, -len);
	FUNC28(handle, inode, 1);

	FUNC18(handle, et->et_root_bh);

	if (phys_blkno) {
		if (flags & OCFS2_EXT_REFCOUNTED)
			ret = FUNC13(inode, handle,
					FUNC9(osb->sb,
								 phys_blkno),
					len, meta_ac,
					dealloc, 1);
		else
			ret = FUNC25(osb, handle,
							phys_blkno, len);
		if (ret)
			FUNC8(ret);

	}

out_commit:
	FUNC12(osb, handle);
out:
	FUNC7(tl_inode);
bail:
	if (meta_ac)
		FUNC16(meta_ac);

	if (ref_tree)
		FUNC27(osb, ref_tree, 1);

	return ret;
}