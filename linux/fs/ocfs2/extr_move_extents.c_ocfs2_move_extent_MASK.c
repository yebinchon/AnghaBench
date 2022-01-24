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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_super {struct inode* osb_tl_inode; } ;
struct ocfs2_refcount_tree {int dummy; } ;
struct ocfs2_move_extents_context {int /*<<< orphan*/ * meta_ac; struct inode* inode; int /*<<< orphan*/  et; int /*<<< orphan*/  refcount_loc; TYPE_1__* range; } ;
struct ocfs2_group_desc {int /*<<< orphan*/  bg_chain; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  me_threshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GLOBAL_BITMAP_SYSTEM_INODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int OCFS2_EXT_REFCOUNTED ; 
 scalar_t__ OCFS2_INODE_UPDATE_CREDITS ; 
 int /*<<< orphan*/  OCFS2_INVALID_SLOT ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct ocfs2_move_extents_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (struct inode*,int /*<<< orphan*/ *,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct inode*,struct ocfs2_group_desc*,struct buffer_head*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC20 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*) ; 
 int FUNC24 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int,int*) ; 
 int FUNC25 (struct ocfs2_super*,int /*<<< orphan*/ ,int,struct ocfs2_refcount_tree**,int /*<<< orphan*/ *) ; 
 int FUNC26 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC27 (struct inode*,struct buffer_head*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC29 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC30 (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ; 

__attribute__((used)) static int FUNC31(struct ocfs2_move_extents_context *context,
			     u32 cpos, u32 phys_cpos, u32 *new_phys_cpos,
			     u32 len, int ext_flags)
{
	int ret, credits = 0, extra_blocks = 0, goal_bit = 0;
	handle_t *handle;
	struct inode *inode = context->inode;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	struct inode *tl_inode = osb->osb_tl_inode;
	struct inode *gb_inode = NULL;
	struct buffer_head *gb_bh = NULL;
	struct buffer_head *gd_bh = NULL;
	struct ocfs2_group_desc *gd;
	struct ocfs2_refcount_tree *ref_tree = NULL;
	u32 move_max_hop = FUNC14(inode->i_sb,
						    context->range->me_threshold);
	u64 phys_blkno, new_phys_blkno;

	phys_blkno = FUNC15(inode->i_sb, phys_cpos);

	if ((ext_flags & OCFS2_EXT_REFCOUNTED) && len) {
		FUNC0(!FUNC23(inode));
		FUNC0(!context->refcount_loc);

		ret = FUNC25(osb, context->refcount_loc, 1,
					       &ref_tree, NULL);
		if (ret) {
			FUNC11(ret);
			return ret;
		}

		ret = FUNC26(inode,
							context->refcount_loc,
							phys_blkno,
							len,
							&credits,
							&extra_blocks);
		if (ret) {
			FUNC11(ret);
			goto out;
		}
	}

	ret = FUNC24(inode, &context->et,
						len, 1,
						&context->meta_ac,
						extra_blocks, &credits);
	if (ret) {
		FUNC11(ret);
		goto out;
	}

	/*
	 * need to count 2 extra credits for global_bitmap inode and
	 * group descriptor.
	 */
	credits += OCFS2_INODE_UPDATE_CREDITS + 1;

	/*
	 * ocfs2_move_extent() didn't reserve any clusters in lock_allocators()
	 * logic, while we still need to lock the global_bitmap.
	 */
	gb_inode = FUNC20(osb, GLOBAL_BITMAP_SYSTEM_INODE,
					       OCFS2_INVALID_SLOT);
	if (!gb_inode) {
		FUNC10(ML_ERROR, "unable to get global_bitmap inode\n");
		ret = -EIO;
		goto out;
	}

	FUNC6(gb_inode);

	ret = FUNC21(gb_inode, &gb_bh, 1);
	if (ret) {
		FUNC11(ret);
		goto out_unlock_gb_mutex;
	}

	FUNC6(tl_inode);

	handle = FUNC29(osb, credits);
	if (FUNC1(handle)) {
		ret = FUNC3(handle);
		FUNC11(ret);
		goto out_unlock_tl_inode;
	}

	new_phys_blkno = FUNC15(inode->i_sb, *new_phys_cpos);
	ret = FUNC18(inode, new_phys_blkno,
					    GLOBAL_BITMAP_SYSTEM_INODE,
					    OCFS2_INVALID_SLOT,
					    &goal_bit, &gd_bh);
	if (ret) {
		FUNC11(ret);
		goto out_commit;
	}

	/*
	 * probe the victim cluster group to find a proper
	 * region to fit wanted movement, it even will perfrom
	 * a best-effort attempt by compromising to a threshold
	 * around the goal.
	 */
	FUNC27(inode, gd_bh, &goal_bit, len, move_max_hop,
				new_phys_cpos);
	if (!*new_phys_cpos) {
		ret = -ENOSPC;
		goto out_commit;
	}

	ret = FUNC4(handle, context, cpos, len, phys_cpos,
				  *new_phys_cpos, ext_flags);
	if (ret) {
		FUNC11(ret);
		goto out_commit;
	}

	gd = (struct ocfs2_group_desc *)gd_bh->b_data;
	ret = FUNC12(gb_inode, handle, gb_bh, len,
					       FUNC9(gd->bg_chain));
	if (ret) {
		FUNC11(ret);
		goto out_commit;
	}

	ret = FUNC13(handle, gb_inode, gd, gd_bh,
					 goal_bit, len);
	if (ret) {
		FUNC28(gb_inode, gb_bh, len,
					       FUNC9(gd->bg_chain));
		FUNC11(ret);
	}

	/*
	 * Here we should write the new page out first if we are
	 * in write-back mode.
	 */
	ret = FUNC17(inode->i_sb, context->inode, cpos, len);
	if (ret)
		FUNC11(ret);

out_commit:
	FUNC16(osb, handle);
	FUNC5(gd_bh);

out_unlock_tl_inode:
	FUNC7(tl_inode);

	FUNC22(gb_inode, 1);
out_unlock_gb_mutex:
	FUNC7(gb_inode);
	FUNC5(gb_bh);
	FUNC8(gb_inode);

out:
	if (context->meta_ac) {
		FUNC19(context->meta_ac);
		context->meta_ac = NULL;
	}

	if (ref_tree)
		FUNC30(osb, ref_tree, 1);

	return ret;
}