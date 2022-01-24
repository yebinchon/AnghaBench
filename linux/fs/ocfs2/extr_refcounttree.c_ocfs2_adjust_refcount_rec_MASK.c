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
typedef  int u32 ;
struct ocfs2_refcount_rec {int /*<<< orphan*/  r_cpos; } ;
struct ocfs2_refcount_block {void* rf_cpos; void* rf_flags; } ;
struct ocfs2_path {int dummy; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_extent_list {TYPE_1__* l_recs; int /*<<< orphan*/  l_next_free_rec; } ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {void* e_cpos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int OCFS2_32BIT_POS_MASK ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int OCFS2_REFCOUNT_TREE_FL ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (void*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct ocfs2_caching_info*,struct ocfs2_path*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_extent_tree*,struct ocfs2_caching_info*,struct buffer_head*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct ocfs2_caching_info*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 struct ocfs2_path* FUNC13 (struct ocfs2_extent_tree*) ; 
 struct buffer_head* FUNC14 (struct ocfs2_path*) ; 
 struct ocfs2_extent_list* FUNC15 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC16(handle_t *handle,
				     struct ocfs2_caching_info *ci,
				     struct buffer_head *ref_root_bh,
				     struct buffer_head *ref_leaf_bh,
				     struct ocfs2_refcount_rec *rec)
{
	int ret = 0, i;
	u32 new_cpos, old_cpos;
	struct ocfs2_path *path = NULL;
	struct ocfs2_extent_tree et;
	struct ocfs2_refcount_block *rb =
		(struct ocfs2_refcount_block *)ref_root_bh->b_data;
	struct ocfs2_extent_list *el;

	if (!(FUNC3(rb->rf_flags) & OCFS2_REFCOUNT_TREE_FL))
		goto out;

	rb = (struct ocfs2_refcount_block *)ref_leaf_bh->b_data;
	old_cpos = FUNC3(rb->rf_cpos);
	new_cpos = FUNC4(rec->r_cpos) & OCFS2_32BIT_POS_MASK;
	if (old_cpos <= new_cpos)
		goto out;

	FUNC9(&et, ci, ref_root_bh);

	path = FUNC13(&et);
	if (!path) {
		ret = -ENOMEM;
		FUNC5(ret);
		goto out;
	}

	ret = FUNC7(ci, path, old_cpos);
	if (ret) {
		FUNC5(ret);
		goto out;
	}

	/*
	 * 2 more credits, one for the leaf refcount block, one for
	 * the extent block contains the extent rec.
	 */
	ret = FUNC6(handle, 2);
	if (ret < 0) {
		FUNC5(ret);
		goto out;
	}

	ret = FUNC11(handle, ci, ref_leaf_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret < 0) {
		FUNC5(ret);
		goto out;
	}

	ret = FUNC10(handle, ci, FUNC14(path),
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret < 0) {
		FUNC5(ret);
		goto out;
	}

	/* change the leaf extent block first. */
	el = FUNC15(path);

	for (i = 0; i < FUNC2(el->l_next_free_rec); i++)
		if (FUNC3(el->l_recs[i].e_cpos) == old_cpos)
			break;

	FUNC0(i == FUNC2(el->l_next_free_rec));

	el->l_recs[i].e_cpos = FUNC1(new_cpos);

	/* change the r_cpos in the leaf block. */
	rb->rf_cpos = FUNC1(new_cpos);

	FUNC12(handle, FUNC14(path));
	FUNC12(handle, ref_leaf_bh);

out:
	FUNC8(path);
	return ret;
}