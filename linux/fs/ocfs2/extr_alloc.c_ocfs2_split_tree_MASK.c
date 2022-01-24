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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_path {int p_tree_depth; } ;
struct ocfs2_insert_type {int ins_tree_depth; int /*<<< orphan*/  ins_split; int /*<<< orphan*/  ins_contig; int /*<<< orphan*/  ins_appending; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_root_el; int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {int /*<<< orphan*/  l_count; int /*<<< orphan*/  l_next_free_rec; struct ocfs2_extent_rec* l_recs; } ;
struct ocfs2_extent_block {struct ocfs2_extent_list h_list; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  APPEND_NONE ; 
 int /*<<< orphan*/  CONTIG_NONE ; 
 int /*<<< orphan*/  SPLIT_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_insert_type*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_extent_rec*,struct ocfs2_insert_type*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_extent_tree*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,int*,struct buffer_head**,struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct ocfs2_extent_rec*,int /*<<< orphan*/ ,struct ocfs2_extent_rec*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 struct ocfs2_extent_list* FUNC12 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC13(handle_t *handle, struct ocfs2_extent_tree *et,
			    struct ocfs2_path *path,
			    int index, u32 new_range,
			    struct ocfs2_alloc_context *meta_ac)
{
	int ret, depth, credits;
	struct buffer_head *last_eb_bh = NULL;
	struct ocfs2_extent_block *eb;
	struct ocfs2_extent_list *rightmost_el, *el;
	struct ocfs2_extent_rec split_rec;
	struct ocfs2_extent_rec *rec;
	struct ocfs2_insert_type insert;

	/*
	 * Setup the record to split before we grow the tree.
	 */
	el = FUNC12(path);
	rec = &el->l_recs[index];
	FUNC9(FUNC10(et->et_ci),
				   &split_rec, new_range, rec);

	depth = path->p_tree_depth;
	if (depth > 0) {
		ret = FUNC11(et->et_ci,
					      FUNC5(et),
					      &last_eb_bh);
		if (ret < 0) {
			FUNC3(ret);
			goto out;
		}

		eb = (struct ocfs2_extent_block *) last_eb_bh->b_data;
		rightmost_el = &eb->h_list;
	} else
		rightmost_el = FUNC12(path);

	credits = path->p_tree_depth +
		  FUNC6(et->et_root_el);
	ret = FUNC7(handle, credits);
	if (ret) {
		FUNC3(ret);
		goto out;
	}

	if (FUNC1(rightmost_el->l_next_free_rec) ==
	    FUNC1(rightmost_el->l_count)) {
		ret = FUNC8(handle, et, &depth, &last_eb_bh,
				      meta_ac);
		if (ret) {
			FUNC3(ret);
			goto out;
		}
	}

	FUNC2(&insert, 0, sizeof(struct ocfs2_insert_type));
	insert.ins_appending = APPEND_NONE;
	insert.ins_contig = CONTIG_NONE;
	insert.ins_split = SPLIT_RIGHT;
	insert.ins_tree_depth = depth;

	ret = FUNC4(handle, et, &split_rec, &insert);
	if (ret)
		FUNC3(ret);

out:
	FUNC0(last_eb_bh);
	return ret;
}