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
typedef  int u32 ;
struct ocfs2_refcount_rec {int /*<<< orphan*/  r_refcount; int /*<<< orphan*/  r_clusters; int /*<<< orphan*/  r_cpos; } ;
struct ocfs2_refcount_list {scalar_t__ rl_used; scalar_t__ rl_count; struct ocfs2_refcount_rec* rl_recs; } ;
struct ocfs2_refcount_block {struct ocfs2_refcount_list rf_records; int /*<<< orphan*/  rf_flags; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int OCFS2_REFCOUNT_TREE_FL ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_refcount_rec*,struct ocfs2_refcount_rec*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,struct buffer_head*,struct buffer_head*,struct ocfs2_refcount_rec*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,struct buffer_head*,struct buffer_head*,struct ocfs2_alloc_context*) ; 
 int FUNC10 (struct ocfs2_caching_info*,struct buffer_head*,scalar_t__,int,int /*<<< orphan*/ *,int*,struct buffer_head**) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_refcount_block*,int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned long long,int,unsigned long long,int,int) ; 

__attribute__((used)) static int FUNC15(handle_t *handle,
				     struct ocfs2_caching_info *ci,
				     struct buffer_head *ref_root_bh,
				     struct buffer_head *ref_leaf_bh,
				     struct ocfs2_refcount_rec *rec,
				     int index, int merge,
				     struct ocfs2_alloc_context *meta_ac)
{
	int ret;
	struct ocfs2_refcount_block *rb =
			(struct ocfs2_refcount_block *)ref_leaf_bh->b_data;
	struct ocfs2_refcount_list *rf_list = &rb->rf_records;
	struct buffer_head *new_bh = NULL;

	FUNC0(FUNC4(rb->rf_flags) & OCFS2_REFCOUNT_TREE_FL);

	if (rf_list->rl_used == rf_list->rl_count) {
		u64 cpos = FUNC5(rec->r_cpos);
		u32 len = FUNC4(rec->r_clusters);

		ret = FUNC9(handle, ci, ref_root_bh,
						 ref_leaf_bh, meta_ac);
		if (ret) {
			FUNC7(ret);
			goto out;
		}

		ret = FUNC10(ci, ref_root_bh,
					     cpos, len, NULL, &index,
					     &new_bh);
		if (ret) {
			FUNC7(ret);
			goto out;
		}

		ref_leaf_bh = new_bh;
		rb = (struct ocfs2_refcount_block *)ref_leaf_bh->b_data;
		rf_list = &rb->rf_records;
	}

	ret = FUNC11(handle, ci, ref_leaf_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC7(ret);
		goto out;
	}

	if (index < FUNC3(rf_list->rl_used))
		FUNC6(&rf_list->rl_recs[index + 1],
			&rf_list->rl_recs[index],
			(FUNC3(rf_list->rl_used) - index) *
			 sizeof(struct ocfs2_refcount_rec));

	FUNC14(
		(unsigned long long)ref_leaf_bh->b_blocknr, index,
		(unsigned long long)FUNC5(rec->r_cpos),
		FUNC4(rec->r_clusters), FUNC4(rec->r_refcount));

	rf_list->rl_recs[index] = *rec;

	FUNC2(&rf_list->rl_used, 1);

	if (merge)
		FUNC13(rb, index);

	FUNC12(handle, ref_leaf_bh);

	if (index == 0) {
		ret = FUNC8(handle, ci,
						ref_root_bh,
						ref_leaf_bh, rec);
		if (ret)
			FUNC7(ret);
	}
out:
	FUNC1(new_bh);
	return ret;
}