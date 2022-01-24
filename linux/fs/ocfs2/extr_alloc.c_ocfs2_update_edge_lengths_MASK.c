#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct ocfs2_path {int p_tree_depth; TYPE_1__* p_node; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_cpos; int /*<<< orphan*/  e_int_clusters; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int /*<<< orphan*/  l_next_free_rec; } ;
struct ocfs2_extent_block {unsigned long long h_next_leaf_blk; struct ocfs2_extent_list h_list; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {scalar_t__ b_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  bh; struct ocfs2_extent_list* el; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct ocfs2_extent_list*,struct ocfs2_extent_rec*) ; 
 TYPE_2__* FUNC9 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC10(handle_t *handle,
				     struct ocfs2_extent_tree *et,
				     struct ocfs2_path *path)
{
	int i, idx, ret;
	struct ocfs2_extent_rec *rec;
	struct ocfs2_extent_list *el;
	struct ocfs2_extent_block *eb;
	u32 range;

	ret = FUNC6(et->et_ci, handle, path);
	if (ret) {
		FUNC5(ret);
		goto out;
	}

	/* Path should always be rightmost. */
	eb = (struct ocfs2_extent_block *)FUNC9(path)->b_data;
	FUNC0(eb->h_next_leaf_blk != 0ULL);

	el = &eb->h_list;
	FUNC0(FUNC2(el->l_next_free_rec) == 0);
	idx = FUNC2(el->l_next_free_rec) - 1;
	rec = &el->l_recs[idx];
	range = FUNC4(rec->e_cpos) + FUNC8(el, rec);

	for (i = 0; i < path->p_tree_depth; i++) {
		el = path->p_node[i].el;
		idx = FUNC2(el->l_next_free_rec) - 1;
		rec = &el->l_recs[idx];

		rec->e_int_clusters = FUNC1(range);
		FUNC3(&rec->e_int_clusters, -FUNC4(rec->e_cpos));

		FUNC7(handle, path->p_node[i].bh);
	}
out:
	return ret;
}