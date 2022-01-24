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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct ocfs2_refcount_rec {scalar_t__ r_clusters; int /*<<< orphan*/  r_cpos; scalar_t__ r_refcount; } ;
struct TYPE_2__ {int /*<<< orphan*/  rl_count; int /*<<< orphan*/  rl_used; } ;
struct ocfs2_refcount_block {scalar_t__ rf_flags; TYPE_1__ rf_records; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_root_el; } ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 scalar_t__ OCFS2_EXPAND_REFCOUNT_TREE_CREDITS ; 
 int OCFS2_REFCOUNT_TREE_FL ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ocfs2_caching_info*,struct buffer_head*,scalar_t__,scalar_t__,struct ocfs2_refcount_rec*,int*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_extent_tree*,struct ocfs2_caching_info*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long long,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,unsigned long long,scalar_t__,unsigned long long,int,int,int) ; 

__attribute__((used)) static int FUNC13(struct super_block *sb,
					    struct ocfs2_caching_info *ci,
					    struct buffer_head *ref_root_bh,
					    u64 start_cpos,
					    u32 clusters,
					    int *meta_add,
					    int *credits)
{
	int ret = 0, index, ref_blocks = 0, recs_add = 0;
	u64 cpos = start_cpos;
	struct ocfs2_refcount_block *rb;
	struct ocfs2_refcount_rec rec;
	struct buffer_head *ref_leaf_bh = NULL, *prev_bh = NULL;
	u32 len;

	while (clusters) {
		ret = FUNC9(ci, ref_root_bh,
					     cpos, clusters, &rec,
					     &index, &ref_leaf_bh);
		if (ret) {
			FUNC6(ret);
			goto out;
		}

		if (ref_leaf_bh != prev_bh) {
			/*
			 * Now we encounter a new leaf block, so calculate
			 * whether we need to extend the old leaf.
			 */
			if (prev_bh) {
				rb = (struct ocfs2_refcount_block *)
							prev_bh->b_data;

				if (FUNC2(rb->rf_records.rl_used) +
				    recs_add >
				    FUNC2(rb->rf_records.rl_count))
					ref_blocks++;
			}

			recs_add = 0;
			*credits += 1;
			FUNC0(prev_bh);
			prev_bh = ref_leaf_bh;
			FUNC1(prev_bh);
		}

		FUNC12(
				recs_add, (unsigned long long)cpos, clusters,
				(unsigned long long)FUNC4(rec.r_cpos),
				FUNC3(rec.r_clusters),
				FUNC3(rec.r_refcount), index);

		len = FUNC5((u64)cpos + clusters, FUNC4(rec.r_cpos) +
			  FUNC3(rec.r_clusters)) - cpos;
		/*
		 * We record all the records which will be inserted to the
		 * same refcount block, so that we can tell exactly whether
		 * we need a new refcount block or not.
		 *
		 * If we will insert a new one, this is easy and only happens
		 * during adding refcounted flag to the extent, so we don't
		 * have a chance of spliting. We just need one record.
		 *
		 * If the refcount rec already exists, that would be a little
		 * complicated. we may have to:
		 * 1) split at the beginning if the start pos isn't aligned.
		 *    we need 1 more record in this case.
		 * 2) split int the end if the end pos isn't aligned.
		 *    we need 1 more record in this case.
		 * 3) split in the middle because of file system fragmentation.
		 *    we need 2 more records in this case(we can't detect this
		 *    beforehand, so always think of the worst case).
		 */
		if (rec.r_refcount) {
			recs_add += 2;
			/* Check whether we need a split at the beginning. */
			if (cpos == start_cpos &&
			    cpos != FUNC4(rec.r_cpos))
				recs_add++;

			/* Check whether we need a split in the end. */
			if (cpos + clusters < FUNC4(rec.r_cpos) +
			    FUNC3(rec.r_clusters))
				recs_add++;
		} else
			recs_add++;

		FUNC0(ref_leaf_bh);
		ref_leaf_bh = NULL;
		clusters -= len;
		cpos += len;
	}

	if (prev_bh) {
		rb = (struct ocfs2_refcount_block *)prev_bh->b_data;

		if (FUNC2(rb->rf_records.rl_used) + recs_add >
		    FUNC2(rb->rf_records.rl_count))
			ref_blocks++;

		*credits += 1;
	}

	if (!ref_blocks)
		goto out;

	*meta_add += ref_blocks;
	*credits += ref_blocks;

	/*
	 * So we may need ref_blocks to insert into the tree.
	 * That also means we need to change the b-tree and add that number
	 * of records since we never merge them.
	 * We need one more block for expansion since the new created leaf
	 * block is also full and needs split.
	 */
	rb = (struct ocfs2_refcount_block *)ref_root_bh->b_data;
	if (FUNC3(rb->rf_flags) & OCFS2_REFCOUNT_TREE_FL) {
		struct ocfs2_extent_tree et;

		FUNC10(&et, ci, ref_root_bh);
		*meta_add += FUNC8(et.et_root_el);
		*credits += FUNC7(sb,
						      et.et_root_el);
	} else {
		*credits += OCFS2_EXPAND_REFCOUNT_TREE_CREDITS;
		*meta_add += 1;
	}

out:

	FUNC11(
		(unsigned long long)start_cpos, clusters,
		*meta_add, *credits);
	FUNC0(ref_leaf_bh);
	FUNC0(prev_bh);
	return ret;
}