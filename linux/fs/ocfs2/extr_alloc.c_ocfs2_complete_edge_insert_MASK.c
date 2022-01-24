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
struct ocfs2_path {int p_tree_depth; TYPE_1__* p_node; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int /*<<< orphan*/  l_next_free_rec; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {struct buffer_head* bh; struct ocfs2_extent_list* el; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_extent_rec*,struct ocfs2_extent_rec*,struct ocfs2_extent_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_extent_list*,struct ocfs2_extent_list*,struct ocfs2_extent_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 struct ocfs2_extent_list* FUNC4 (struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(handle_t *handle,
				       struct ocfs2_path *left_path,
				       struct ocfs2_path *right_path,
				       int subtree_index)
{
	int i, idx;
	struct ocfs2_extent_list *el, *left_el, *right_el;
	struct ocfs2_extent_rec *left_rec, *right_rec;
	struct buffer_head *root_bh = left_path->p_node[subtree_index].bh;

	/*
	 * Update the counts and position values within all the
	 * interior nodes to reflect the leaf rotation we just did.
	 *
	 * The root node is handled below the loop.
	 *
	 * We begin the loop with right_el and left_el pointing to the
	 * leaf lists and work our way up.
	 *
	 * NOTE: within this loop, left_el and right_el always refer
	 * to the *child* lists.
	 */
	left_el = FUNC4(left_path);
	right_el = FUNC4(right_path);
	for(i = left_path->p_tree_depth - 1; i > subtree_index; i--) {
		FUNC5(i);

		/*
		 * One nice property of knowing that all of these
		 * nodes are below the root is that we only deal with
		 * the leftmost right node record and the rightmost
		 * left node record.
		 */
		el = left_path->p_node[i].el;
		idx = FUNC0(left_el->l_next_free_rec) - 1;
		left_rec = &el->l_recs[idx];

		el = right_path->p_node[i].el;
		right_rec = &el->l_recs[0];

		FUNC1(left_rec, right_rec, right_el);

		FUNC3(handle, left_path->p_node[i].bh);
		FUNC3(handle, right_path->p_node[i].bh);

		/*
		 * Setup our list pointers now so that the current
		 * parents become children in the next iteration.
		 */
		left_el = left_path->p_node[i].el;
		right_el = right_path->p_node[i].el;
	}

	/*
	 * At the root node, adjust the two adjacent records which
	 * begin our path to the leaves.
	 */

	el = left_path->p_node[subtree_index].el;
	left_el = left_path->p_node[subtree_index + 1].el;
	right_el = right_path->p_node[subtree_index + 1].el;

	FUNC2(el, left_el, right_el,
				  left_path->p_node[subtree_index + 1].bh->b_blocknr);

	root_bh = left_path->p_node[subtree_index].bh;

	FUNC3(handle, root_bh);
}