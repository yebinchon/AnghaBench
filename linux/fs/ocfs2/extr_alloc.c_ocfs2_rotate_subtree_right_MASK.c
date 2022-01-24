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
struct ocfs2_extent_list {scalar_t__ l_next_free_rec; scalar_t__ l_count; struct ocfs2_extent_rec* l_recs; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {struct buffer_head* bh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_extent_rec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct ocfs2_path*,struct ocfs2_path*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_extent_list*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long,int) ; 
 scalar_t__ FUNC9 (struct ocfs2_extent_rec*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ocfs2_path*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct ocfs2_extent_list*) ; 
 struct buffer_head* FUNC15 (struct ocfs2_path*) ; 
 struct ocfs2_extent_list* FUNC16 (struct ocfs2_path*) ; 
 int FUNC17 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC18(handle_t *handle,
				      struct ocfs2_extent_tree *et,
				      struct ocfs2_path *left_path,
				      struct ocfs2_path *right_path,
				      int subtree_index)
{
	int ret, i;
	struct buffer_head *right_leaf_bh;
	struct buffer_head *left_leaf_bh = NULL;
	struct buffer_head *root_bh;
	struct ocfs2_extent_list *right_el, *left_el;
	struct ocfs2_extent_rec move_rec;

	left_leaf_bh = FUNC15(left_path);
	left_el = FUNC16(left_path);

	if (left_el->l_next_free_rec != left_el->l_count) {
		FUNC8(FUNC11(et->et_ci),
			    "Inode %llu has non-full interior leaf node %llu (next free = %u)\n",
			    (unsigned long long)FUNC12(et->et_ci),
			    (unsigned long long)left_leaf_bh->b_blocknr,
			    FUNC2(left_el->l_next_free_rec));
		return -EROFS;
	}

	/*
	 * This extent block may already have an empty record, so we
	 * return early if so.
	 */
	if (FUNC9(&left_el->l_recs[0]))
		return 0;

	root_bh = left_path->p_node[subtree_index].bh;
	FUNC0(root_bh != right_path->p_node[subtree_index].bh);

	ret = FUNC13(handle, et->et_ci, right_path,
					   subtree_index);
	if (ret) {
		FUNC5(ret);
		goto out;
	}

	for(i = subtree_index + 1; i < FUNC17(right_path); i++) {
		ret = FUNC13(handle, et->et_ci,
						   right_path, i);
		if (ret) {
			FUNC5(ret);
			goto out;
		}

		ret = FUNC13(handle, et->et_ci,
						   left_path, i);
		if (ret) {
			FUNC5(ret);
			goto out;
		}
	}

	right_leaf_bh = FUNC15(right_path);
	right_el = FUNC16(right_path);

	/* This is a code error, not a disk corruption. */
	FUNC4(!right_el->l_next_free_rec, "Inode %llu: Rotate fails "
			"because rightmost leaf block %llu is empty\n",
			(unsigned long long)FUNC12(et->et_ci),
			(unsigned long long)right_leaf_bh->b_blocknr);

	FUNC7(right_el);

	FUNC10(handle, right_leaf_bh);

	/* Do the copy now. */
	i = FUNC2(left_el->l_next_free_rec) - 1;
	move_rec = left_el->l_recs[i];
	right_el->l_recs[0] = move_rec;

	/*
	 * Clear out the record we just copied and shift everything
	 * over, leaving an empty extent in the left leaf.
	 *
	 * We temporarily subtract from next_free_rec so that the
	 * shift will lose the tail record (which is now defunct).
	 */
	FUNC1(&left_el->l_next_free_rec, -1);
	FUNC14(left_el);
	FUNC3(&left_el->l_recs[0], 0, sizeof(struct ocfs2_extent_rec));
	FUNC1(&left_el->l_next_free_rec, 1);

	FUNC10(handle, left_leaf_bh);

	FUNC6(handle, left_path, right_path,
				   subtree_index);

out:
	return ret;
}