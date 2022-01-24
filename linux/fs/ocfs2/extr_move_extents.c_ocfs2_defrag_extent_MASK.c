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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct ocfs2_super {int /*<<< orphan*/  sb; struct inode* osb_tl_inode; } ;
struct ocfs2_refcount_tree {int dummy; } ;
struct ocfs2_move_extents_context {int partial; struct ocfs2_alloc_context* meta_ac; struct ocfs2_alloc_context* data_ac; struct inode* inode; TYPE_1__* range; int /*<<< orphan*/  et; int /*<<< orphan*/  refcount_loc; } ;
struct ocfs2_alloc_context {scalar_t__ ac_which; int /*<<< orphan*/  ac_bh; int /*<<< orphan*/  ac_inode; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  me_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ OCFS2_AC_USE_LOCAL ; 
 int OCFS2_EXT_REFCOUNTED ; 
 int /*<<< orphan*/  OCFS2_MOVE_EXT_FL_COMPLETE ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct ocfs2_alloc_context*,int,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int FUNC5 (struct ocfs2_super*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct ocfs2_move_extents_context*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct ocfs2_super*,int /*<<< orphan*/ *,struct ocfs2_alloc_context*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int FUNC18 (struct inode*,int /*<<< orphan*/ *,scalar_t__,int,struct ocfs2_alloc_context**,int,int*) ; 
 int FUNC19 (struct ocfs2_super*,int /*<<< orphan*/ ,int,struct ocfs2_refcount_tree**,int /*<<< orphan*/ *) ; 
 int FUNC20 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int*,int*) ; 
 int FUNC21 (struct ocfs2_super*,scalar_t__,struct ocfs2_alloc_context**) ; 
 int /*<<< orphan*/ * FUNC22 (struct ocfs2_super*,int) ; 
 scalar_t__ FUNC23 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC24 (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ; 

__attribute__((used)) static int FUNC25(struct ocfs2_move_extents_context *context,
			       u32 cpos, u32 phys_cpos, u32 *len, int ext_flags)
{
	int ret, credits = 0, extra_blocks = 0, partial = context->partial;
	handle_t *handle;
	struct inode *inode = context->inode;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	struct inode *tl_inode = osb->osb_tl_inode;
	struct ocfs2_refcount_tree *ref_tree = NULL;
	u32 new_phys_cpos, new_len;
	u64 phys_blkno = FUNC11(inode->i_sb, phys_cpos);
	int need_free = 0;

	if ((ext_flags & OCFS2_EXT_REFCOUNTED) && *len) {
		FUNC0(!FUNC17(inode));
		FUNC0(!context->refcount_loc);

		ret = FUNC19(osb, context->refcount_loc, 1,
					       &ref_tree, NULL);
		if (ret) {
			FUNC10(ret);
			return ret;
		}

		ret = FUNC20(inode,
							context->refcount_loc,
							phys_blkno,
							*len,
							&credits,
							&extra_blocks);
		if (ret) {
			FUNC10(ret);
			goto out;
		}
	}

	ret = FUNC18(inode, &context->et,
						*len, 1,
						&context->meta_ac,
						extra_blocks, &credits);
	if (ret) {
		FUNC10(ret);
		goto out;
	}

	/*
	 * should be using allocation reservation strategy there?
	 *
	 * if (context->data_ac)
	 *	context->data_ac->ac_resv = &OCFS2_I(inode)->ip_la_data_resv;
	 */

	FUNC7(tl_inode);

	if (FUNC23(osb)) {
		ret = FUNC5(osb);
		if (ret < 0) {
			FUNC10(ret);
			goto out_unlock_mutex;
		}
	}

	/*
	 * Make sure ocfs2_reserve_cluster is called after
	 * __ocfs2_flush_truncate_log, otherwise, dead lock may happen.
	 *
	 * If ocfs2_reserve_cluster is called
	 * before __ocfs2_flush_truncate_log, dead lock on global bitmap
	 * may happen.
	 *
	 */
	ret = FUNC21(osb, *len, &context->data_ac);
	if (ret) {
		FUNC10(ret);
		goto out_unlock_mutex;
	}

	handle = FUNC22(osb, credits);
	if (FUNC1(handle)) {
		ret = FUNC3(handle);
		FUNC10(ret);
		goto out_unlock_mutex;
	}

	ret = FUNC4(handle, context->data_ac, 1, *len,
				     &new_phys_cpos, &new_len);
	if (ret) {
		FUNC10(ret);
		goto out_commit;
	}

	/*
	 * allowing partial extent moving is kind of 'pros and cons', it makes
	 * whole defragmentation less likely to fail, on the contrary, the bad
	 * thing is it may make the fs even more fragmented after moving, let
	 * userspace make a good decision here.
	 */
	if (new_len != *len) {
		FUNC9(0, "len_claimed: %u, len: %u\n", new_len, *len);
		if (!partial) {
			context->range->me_flags &= ~OCFS2_MOVE_EXT_FL_COMPLETE;
			ret = -ENOSPC;
			need_free = 1;
			goto out_commit;
		}
	}

	FUNC9(0, "cpos: %u, phys_cpos: %u, new_phys_cpos: %u\n", cpos,
	     phys_cpos, new_phys_cpos);

	ret = FUNC6(handle, context, cpos, new_len, phys_cpos,
				  new_phys_cpos, ext_flags);
	if (ret)
		FUNC10(ret);

	if (partial && (new_len != *len))
		*len = new_len;

	/*
	 * Here we should write the new page out first if we are
	 * in write-back mode.
	 */
	ret = FUNC13(inode->i_sb, context->inode, cpos, *len);
	if (ret)
		FUNC10(ret);

out_commit:
	if (need_free && context->data_ac) {
		struct ocfs2_alloc_context *data_ac = context->data_ac;

		if (context->data_ac->ac_which == OCFS2_AC_USE_LOCAL)
			FUNC16(osb, handle, data_ac,
					new_phys_cpos, new_len);
		else
			FUNC15(handle,
					data_ac->ac_inode,
					data_ac->ac_bh,
					FUNC11(osb->sb, new_phys_cpos),
					new_len);
	}

	FUNC12(osb, handle);

out_unlock_mutex:
	FUNC8(tl_inode);

	if (context->data_ac) {
		FUNC14(context->data_ac);
		context->data_ac = NULL;
	}

	if (context->meta_ac) {
		FUNC14(context->meta_ac);
		context->meta_ac = NULL;
	}

out:
	if (ref_tree)
		FUNC24(osb, ref_tree, 1);

	return ret;
}