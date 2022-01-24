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
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_cpos; int /*<<< orphan*/  e_int_clusters; int /*<<< orphan*/  e_leaf_clusters; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int /*<<< orphan*/  l_next_free_rec; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {struct ocfs2_extent_list* el; struct buffer_head* bh; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(handle_t *handle,
					   struct ocfs2_extent_tree *et,
					   struct ocfs2_path *path,
					   struct ocfs2_extent_rec *insert_rec)
{
	int i, next_free;
	struct buffer_head *bh;
	struct ocfs2_extent_list *el;
	struct ocfs2_extent_rec *rec;

	/*
	 * Update everything except the leaf block.
	 */
	for (i = 0; i < path->p_tree_depth; i++) {
		bh = path->p_node[i].bh;
		el = path->p_node[i].el;

		next_free = FUNC0(el->l_next_free_rec);
		if (next_free == 0) {
			FUNC3(FUNC5(et->et_ci),
				    "Owner %llu has a bad extent list\n",
				    (unsigned long long)FUNC6(et->et_ci));
			return;
		}

		rec = &el->l_recs[next_free - 1];

		rec->e_int_clusters = insert_rec->e_cpos;
		FUNC1(&rec->e_int_clusters,
			     FUNC0(insert_rec->e_leaf_clusters));
		FUNC1(&rec->e_int_clusters,
			     -FUNC2(rec->e_cpos));

		FUNC4(handle, bh);
	}
}