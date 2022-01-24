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
struct ocfs2_path {scalar_t__ p_tree_depth; } ;
struct ocfs2_merge_ctxt {int c_split_covers_rec; scalar_t__ c_contig_type; int /*<<< orphan*/  c_has_empty_extent; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_rec {scalar_t__ e_cpos; scalar_t__ e_leaf_clusters; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 scalar_t__ CONTIG_NONE ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_extent_tree*) ; 
 int FUNC5 (struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_extent_list*,int,struct ocfs2_extent_rec*,struct ocfs2_merge_ctxt*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_extent_rec*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_extent_list*,int,struct ocfs2_extent_rec*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_path*,struct buffer_head**,int,struct ocfs2_extent_rec*,struct ocfs2_alloc_context*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_path*,int,struct ocfs2_extent_rec*,struct ocfs2_cached_dealloc_ctxt*,struct ocfs2_merge_ctxt*) ; 
 struct ocfs2_extent_list* FUNC11 (struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__,int /*<<< orphan*/ ,int) ; 

int FUNC13(handle_t *handle,
		       struct ocfs2_extent_tree *et,
		       struct ocfs2_path *path,
		       int split_index,
		       struct ocfs2_extent_rec *split_rec,
		       struct ocfs2_alloc_context *meta_ac,
		       struct ocfs2_cached_dealloc_ctxt *dealloc)
{
	int ret = 0;
	struct ocfs2_extent_list *el = FUNC11(path);
	struct buffer_head *last_eb_bh = NULL;
	struct ocfs2_extent_rec *rec = &el->l_recs[split_index];
	struct ocfs2_merge_ctxt ctxt;

	if (FUNC2(rec->e_cpos) > FUNC2(split_rec->e_cpos) ||
	    ((FUNC2(rec->e_cpos) + FUNC1(rec->e_leaf_clusters)) <
	     (FUNC2(split_rec->e_cpos) + FUNC1(split_rec->e_leaf_clusters)))) {
		ret = -EIO;
		FUNC3(ret);
		goto out;
	}

	ret = FUNC5(et, path, el,
					     split_index,
					     split_rec,
					     &ctxt);
	if (ret) {
		FUNC3(ret);
		goto out;
	}

	/*
	 * The core merge / split code wants to know how much room is
	 * left in this allocation tree, so we pass the
	 * rightmost extent list.
	 */
	if (path->p_tree_depth) {
		ret = FUNC7(et->et_ci,
					      FUNC4(et),
					      &last_eb_bh);
		if (ret) {
			FUNC3(ret);
			goto out;
		}
	}

	if (rec->e_cpos == split_rec->e_cpos &&
	    rec->e_leaf_clusters == split_rec->e_leaf_clusters)
		ctxt.c_split_covers_rec = 1;
	else
		ctxt.c_split_covers_rec = 0;

	ctxt.c_has_empty_extent = FUNC6(&el->l_recs[0]);

	FUNC12(split_index, ctxt.c_contig_type,
				 ctxt.c_has_empty_extent,
				 ctxt.c_split_covers_rec);

	if (ctxt.c_contig_type == CONTIG_NONE) {
		if (ctxt.c_split_covers_rec)
			ret = FUNC8(handle, et, path, el,
						       split_index, split_rec);
		else
			ret = FUNC9(handle, et, path,
						     &last_eb_bh, split_index,
						     split_rec, meta_ac);
		if (ret)
			FUNC3(ret);
	} else {
		ret = FUNC10(handle, et, path,
						split_index, split_rec,
						dealloc, &ctxt);
		if (ret)
			FUNC3(ret);
	}

out:
	FUNC0(last_eb_bh);
	return ret;
}