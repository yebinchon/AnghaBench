#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct ocfs2_path {TYPE_4__* p_node; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_extent_list {int /*<<< orphan*/  l_next_free_rec; TYPE_5__* l_recs; } ;
struct TYPE_7__ {TYPE_1__* l_recs; } ;
struct ocfs2_extent_block {TYPE_2__ h_list; int /*<<< orphan*/  h_next_leaf_blk; } ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  e_cpos; int /*<<< orphan*/  e_blkno; } ;
struct TYPE_9__ {TYPE_3__* bh; struct ocfs2_extent_list* el; } ;
struct TYPE_8__ {scalar_t__ b_blocknr; } ;
struct TYPE_6__ {int /*<<< orphan*/  e_cpos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct super_block*,struct ocfs2_path*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ocfs2_caching_info*,struct ocfs2_path*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_extent_tree*,struct ocfs2_caching_info*,struct buffer_head*) ; 
 struct super_block* FUNC10 (struct ocfs2_caching_info*) ; 
 struct ocfs2_path* FUNC11 (struct ocfs2_extent_tree*) ; 
 struct ocfs2_path* FUNC12 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC13(struct ocfs2_caching_info *ci,
				       struct buffer_head *ref_root_bh,
				       struct ocfs2_extent_block *eb,
				       struct ocfs2_extent_list *el,
				       int index,  u32 *cpos_end)
{
	int ret, i, subtree_root;
	u32 cpos;
	u64 blkno;
	struct super_block *sb = FUNC10(ci);
	struct ocfs2_path *left_path = NULL, *right_path = NULL;
	struct ocfs2_extent_tree et;
	struct ocfs2_extent_list *tmp_el;

	if (index < FUNC1(el->l_next_free_rec) - 1) {
		/*
		 * We have a extent rec after index, so just use the e_cpos
		 * of the next extent rec.
		 */
		*cpos_end = FUNC2(el->l_recs[index+1].e_cpos);
		return 0;
	}

	if (!eb || (eb && !eb->h_next_leaf_blk)) {
		/*
		 * We are the last extent rec, so any high cpos should
		 * be stored in this leaf refcount block.
		 */
		*cpos_end = UINT_MAX;
		return 0;
	}

	/*
	 * If the extent block isn't the last one, we have to find
	 * the subtree root between this extent block and the next
	 * leaf extent block and get the corresponding e_cpos from
	 * the subroot. Otherwise we may corrupt the b-tree.
	 */
	FUNC9(&et, ci, ref_root_bh);

	left_path = FUNC11(&et);
	if (!left_path) {
		ret = -ENOMEM;
		FUNC4(ret);
		goto out;
	}

	cpos = FUNC2(eb->h_list.l_recs[index].e_cpos);
	ret = FUNC6(ci, left_path, cpos);
	if (ret) {
		FUNC4(ret);
		goto out;
	}

	right_path = FUNC12(left_path);
	if (!right_path) {
		ret = -ENOMEM;
		FUNC4(ret);
		goto out;
	}

	ret = FUNC5(sb, left_path, &cpos);
	if (ret) {
		FUNC4(ret);
		goto out;
	}

	ret = FUNC6(ci, right_path, cpos);
	if (ret) {
		FUNC4(ret);
		goto out;
	}

	subtree_root = FUNC7(&et, left_path,
					       right_path);

	tmp_el = left_path->p_node[subtree_root].el;
	blkno = left_path->p_node[subtree_root+1].bh->b_blocknr;
	for (i = 0; i < FUNC1(tmp_el->l_next_free_rec); i++) {
		if (FUNC3(tmp_el->l_recs[i].e_blkno) == blkno) {
			*cpos_end = FUNC2(tmp_el->l_recs[i+1].e_cpos);
			break;
		}
	}

	FUNC0(i == FUNC1(tmp_el->l_next_free_rec));

out:
	FUNC8(left_path);
	FUNC8(right_path);
	return ret;
}