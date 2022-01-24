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
struct ocfs2_path {TYPE_1__* p_node; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {int /*<<< orphan*/ * l_recs; int /*<<< orphan*/  l_next_free_rec; } ;
struct ocfs2_extent_block {unsigned long long h_next_leaf_blk; int /*<<< orphan*/  h_blkno; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {struct buffer_head* bh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ocfs2_path*,struct ocfs2_path*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ocfs2_path*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_extent_list*) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_extent_list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*,int,struct ocfs2_cached_dealloc_ctxt*) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_path*) ; 
 struct buffer_head* FUNC16 (struct ocfs2_path*) ; 
 struct ocfs2_extent_list* FUNC17 (struct ocfs2_path*) ; 
 int FUNC18 (struct ocfs2_path*) ; 
 struct buffer_head* FUNC19 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC20(handle_t *handle,
				     struct ocfs2_extent_tree *et,
				     struct ocfs2_path *left_path,
				     struct ocfs2_path *right_path,
				     int subtree_index,
				     struct ocfs2_cached_dealloc_ctxt *dealloc,
				     int *deleted)
{
	int ret, i, del_right_subtree = 0, right_has_empty = 0;
	struct buffer_head *root_bh, *et_root_bh = FUNC19(right_path);
	struct ocfs2_extent_list *right_leaf_el, *left_leaf_el;
	struct ocfs2_extent_block *eb;

	*deleted = 0;

	right_leaf_el = FUNC17(right_path);
	left_leaf_el = FUNC17(left_path);
	root_bh = left_path->p_node[subtree_index].bh;
	FUNC0(root_bh != right_path->p_node[subtree_index].bh);

	if (!FUNC8(&left_leaf_el->l_recs[0]))
		return 0;

	eb = (struct ocfs2_extent_block *)FUNC16(right_path)->b_data;
	if (FUNC8(&right_leaf_el->l_recs[0])) {
		/*
		 * It's legal for us to proceed if the right leaf is
		 * the rightmost one and it has an empty extent. There
		 * are two cases to handle - whether the leaf will be
		 * empty after removal or not. If the leaf isn't empty
		 * then just remove the empty extent up front. The
		 * next block will handle empty leaves by flagging
		 * them for unlink.
		 *
		 * Non rightmost leaves will throw -EAGAIN and the
		 * caller can manually move the subtree and retry.
		 */

		if (eb->h_next_leaf_blk != 0ULL)
			return -EAGAIN;

		if (FUNC1(right_leaf_el->l_next_free_rec) > 1) {
			ret = FUNC9(handle, et->et_ci,
						      FUNC16(right_path),
						      OCFS2_JOURNAL_ACCESS_WRITE);
			if (ret) {
				FUNC4(ret);
				goto out;
			}

			FUNC12(right_leaf_el);
		} else
			right_has_empty = 1;
	}

	if (eb->h_next_leaf_blk == 0ULL &&
	    FUNC1(right_leaf_el->l_next_free_rec) == 1) {
		/*
		 * We have to update i_last_eb_blk during the meta
		 * data delete.
		 */
		ret = FUNC6(handle, et,
						   OCFS2_JOURNAL_ACCESS_WRITE);
		if (ret) {
			FUNC4(ret);
			goto out;
		}

		del_right_subtree = 1;
	}

	/*
	 * Getting here with an empty extent in the right path implies
	 * that it's the rightmost path and will be deleted.
	 */
	FUNC0(right_has_empty && !del_right_subtree);

	ret = FUNC11(handle, et->et_ci, right_path,
					   subtree_index);
	if (ret) {
		FUNC4(ret);
		goto out;
	}

	for(i = subtree_index + 1; i < FUNC18(right_path); i++) {
		ret = FUNC11(handle, et->et_ci,
						   right_path, i);
		if (ret) {
			FUNC4(ret);
			goto out;
		}

		ret = FUNC11(handle, et->et_ci,
						   left_path, i);
		if (ret) {
			FUNC4(ret);
			goto out;
		}
	}

	if (!right_has_empty) {
		/*
		 * Only do this if we're moving a real
		 * record. Otherwise, the action is delayed until
		 * after removal of the right path in which case we
		 * can do a simple shift to remove the empty extent.
		 */
		FUNC13(left_leaf_el, &right_leaf_el->l_recs[0]);
		FUNC3(&right_leaf_el->l_recs[0], 0,
		       sizeof(struct ocfs2_extent_rec));
	}
	if (eb->h_next_leaf_blk == 0ULL) {
		/*
		 * Move recs over to get rid of empty extent, decrease
		 * next_free. This is allowed to remove the last
		 * extent in our leaf (setting l_next_free_rec to
		 * zero) - the delete code below won't care.
		 */
		FUNC12(right_leaf_el);
	}

	FUNC10(handle, FUNC16(left_path));
	FUNC10(handle, FUNC16(right_path));

	if (del_right_subtree) {
		FUNC14(handle, et, left_path, right_path,
				     subtree_index, dealloc);
		ret = FUNC15(handle, et, left_path);
		if (ret) {
			FUNC4(ret);
			goto out;
		}

		eb = (struct ocfs2_extent_block *)FUNC16(left_path)->b_data;
		FUNC7(et, FUNC2(eb->h_blkno));

		/*
		 * Removal of the extent in the left leaf was skipped
		 * above so we could delete the right path
		 * 1st.
		 */
		if (right_has_empty)
			FUNC12(left_leaf_el);

		FUNC10(handle, et_root_bh);

		*deleted = 1;
	} else
		FUNC5(handle, left_path, right_path,
					   subtree_index);

out:
	return ret;
}