#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct ocfs2_path {scalar_t__ p_tree_depth; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_leaf_clusters; int /*<<< orphan*/  e_cpos; int /*<<< orphan*/  e_blkno; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int /*<<< orphan*/  l_next_free_rec; } ;
struct ocfs2_extent_block {scalar_t__ h_next_leaf_blk; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  h_buffer_credits; } ;
typedef  TYPE_1__ handle_t ;
struct TYPE_12__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_extent_rec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned long long,scalar_t__,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_extent_rec*) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_extent_list*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,struct ocfs2_path*,struct ocfs2_path*,int) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_path*) ; 
 int FUNC14 (struct super_block*,struct ocfs2_path*,scalar_t__*) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct ocfs2_path*,scalar_t__) ; 
 int FUNC16 (struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC17 (struct ocfs2_path*) ; 
 scalar_t__ FUNC18 (struct ocfs2_extent_rec*) ; 
 int FUNC19 (int /*<<< orphan*/ ,TYPE_1__*,struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,TYPE_2__*) ; 
 struct super_block* FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 struct ocfs2_path* FUNC23 (struct ocfs2_path*) ; 
 scalar_t__ FUNC24 (struct ocfs2_extent_list*,struct ocfs2_extent_rec*) ; 
 int FUNC25 (TYPE_1__*,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_cached_dealloc_ctxt*) ; 
 TYPE_2__* FUNC26 (struct ocfs2_path*) ; 
 struct ocfs2_extent_list* FUNC27 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC28(handle_t *handle,
			      struct ocfs2_extent_tree *et,
			      struct ocfs2_path *path, int index,
			      struct ocfs2_cached_dealloc_ctxt *dealloc,
			      u32 cpos, u32 len)
{
	int ret;
	u32 left_cpos, rec_range, trunc_range;
	int is_rightmost_tree_rec = 0;
	struct super_block *sb = FUNC21(et->et_ci);
	struct ocfs2_path *left_path = NULL;
	struct ocfs2_extent_list *el = FUNC27(path);
	struct ocfs2_extent_rec *rec;
	struct ocfs2_extent_block *eb;

	if (FUNC18(&el->l_recs[0]) && index > 0) {
		/* extend credit for ocfs2_remove_rightmost_path */
		ret = FUNC13(handle, 0,
				handle->h_buffer_credits,
				path);
		if (ret) {
			FUNC8(ret);
			goto out;
		}

		ret = FUNC25(handle, et, path, dealloc);
		if (ret) {
			FUNC8(ret);
			goto out;
		}

		index--;
	}

	if (index == (FUNC2(el->l_next_free_rec) - 1) &&
	    path->p_tree_depth) {
		/*
		 * Check whether this is the rightmost tree record. If
		 * we remove all of this record or part of its right
		 * edge then an update of the record lengths above it
		 * will be required.
		 */
		eb = (struct ocfs2_extent_block *)FUNC26(path)->b_data;
		if (eb->h_next_leaf_blk == 0)
			is_rightmost_tree_rec = 1;
	}

	rec = &el->l_recs[index];
	if (index == 0 && path->p_tree_depth &&
	    FUNC4(rec->e_cpos) == cpos) {
		/*
		 * Changing the leftmost offset (via partial or whole
		 * record truncate) of an interior (or rightmost) path
		 * means we have to update the subtree that is formed
		 * by this leaf and the one to it's left.
		 *
		 * There are two cases we can skip:
		 *   1) Path is the leftmost one in our btree.
		 *   2) The leaf is rightmost and will be empty after
		 *      we remove the extent record - the rotate code
		 *      knows how to update the newly formed edge.
		 */

		ret = FUNC14(sb, path, &left_cpos);
		if (ret) {
			FUNC8(ret);
			goto out;
		}

		if (left_cpos && FUNC2(el->l_next_free_rec) > 1) {
			left_path = FUNC23(path);
			if (!left_path) {
				ret = -ENOMEM;
				FUNC8(ret);
				goto out;
			}

			ret = FUNC15(et->et_ci, left_path,
					      left_cpos);
			if (ret) {
				FUNC8(ret);
				goto out;
			}
		}
	}

	ret = FUNC13(handle, 0,
					      handle->h_buffer_credits,
					      path);
	if (ret) {
		FUNC8(ret);
		goto out;
	}

	ret = FUNC19(et->et_ci, handle, path);
	if (ret) {
		FUNC8(ret);
		goto out;
	}

	ret = FUNC19(et->et_ci, handle, left_path);
	if (ret) {
		FUNC8(ret);
		goto out;
	}

	rec_range = FUNC4(rec->e_cpos) + FUNC24(el, rec);
	trunc_range = cpos + len;

	if (FUNC4(rec->e_cpos) == cpos && rec_range == trunc_range) {
		int next_free;

		FUNC6(rec, 0, sizeof(*rec));
		FUNC10(el, index);

		next_free = FUNC2(el->l_next_free_rec);
		if (is_rightmost_tree_rec && next_free > 1) {
			/*
			 * We skip the edge update if this path will
			 * be deleted by the rotate code.
			 */
			rec = &el->l_recs[next_free - 1];
			FUNC9(handle, et, path,
						       rec);
		}
	} else if (FUNC4(rec->e_cpos) == cpos) {
		/* Remove leftmost portion of the record. */
		FUNC3(&rec->e_cpos, len);
		FUNC5(&rec->e_blkno, FUNC11(sb, len));
		FUNC1(&rec->e_leaf_clusters, -len);
	} else if (rec_range == trunc_range) {
		/* Remove rightmost portion of the record */
		FUNC1(&rec->e_leaf_clusters, -len);
		if (is_rightmost_tree_rec)
			FUNC9(handle, et, path, rec);
	} else {
		/* Caller should have trapped this. */
		FUNC7(ML_ERROR, "Owner %llu: Invalid record truncate: (%u, %u) "
		     "(%u, %u)\n",
		     (unsigned long long)FUNC22(et->et_ci),
		     FUNC4(rec->e_cpos),
		     FUNC2(rec->e_leaf_clusters), cpos, len);
		FUNC0();
	}

	if (left_path) {
		int subtree_index;

		subtree_index = FUNC16(et, left_path, path);
		FUNC12(handle, left_path, path,
					   subtree_index);
	}

	FUNC20(handle, FUNC26(path));

	ret = FUNC25(handle, et, path, dealloc);
	if (ret)
		FUNC8(ret);

out:
	FUNC17(left_path);
	return ret;
}