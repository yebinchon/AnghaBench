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
typedef  scalar_t__ u32 ;
struct ocfs2_path {int dummy; } ;
struct ocfs2_extent_tree {struct ocfs2_extent_list* et_root_el; int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {int /*<<< orphan*/ * l_recs; scalar_t__ l_next_free_rec; scalar_t__ l_tree_depth; } ;
struct ocfs2_extent_block {int /*<<< orphan*/  h_blkno; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct ocfs2_extent_tree*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_extent_tree*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct ocfs2_path*,scalar_t__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct ocfs2_path*,scalar_t__) ; 
 int FUNC7 (struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_path*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct ocfs2_path* FUNC12 (struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_cached_dealloc_ctxt*,struct ocfs2_path*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*,int,struct ocfs2_cached_dealloc_ctxt*) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_path*) ; 
 TYPE_1__* FUNC16 (struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC17 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC18(handle_t *handle,
				struct ocfs2_extent_tree *et,
				struct ocfs2_path *path,
				struct ocfs2_cached_dealloc_ctxt *dealloc)
{
	int ret, subtree_index;
	u32 cpos;
	struct ocfs2_path *left_path = NULL;
	struct ocfs2_extent_block *eb;
	struct ocfs2_extent_list *el;

	ret = FUNC3(et);
	if (ret)
		goto out;

	ret = FUNC9(et->et_ci, handle, path);
	if (ret) {
		FUNC2(ret);
		goto out;
	}

	ret = FUNC5(FUNC11(et->et_ci),
					    path, &cpos);
	if (ret) {
		FUNC2(ret);
		goto out;
	}

	if (cpos) {
		/*
		 * We have a path to the left of this one - it needs
		 * an update too.
		 */
		left_path = FUNC12(path);
		if (!left_path) {
			ret = -ENOMEM;
			FUNC2(ret);
			goto out;
		}

		ret = FUNC6(et->et_ci, left_path, cpos);
		if (ret) {
			FUNC2(ret);
			goto out;
		}

		ret = FUNC9(et->et_ci, handle, left_path);
		if (ret) {
			FUNC2(ret);
			goto out;
		}

		subtree_index = FUNC7(et, left_path, path);

		FUNC14(handle, et, left_path, path,
				     subtree_index, dealloc);
		ret = FUNC15(handle, et, left_path);
		if (ret) {
			FUNC2(ret);
			goto out;
		}

		eb = (struct ocfs2_extent_block *)FUNC16(left_path)->b_data;
		FUNC4(et, FUNC0(eb->h_blkno));
	} else {
		/*
		 * 'path' is also the leftmost path which
		 * means it must be the only one. This gets
		 * handled differently because we want to
		 * revert the root back to having extents
		 * in-line.
		 */
		FUNC13(handle, et, dealloc, path, 1);

		el = et->et_root_el;
		el->l_tree_depth = 0;
		el->l_next_free_rec = 0;
		FUNC1(&el->l_recs[0], 0, sizeof(struct ocfs2_extent_rec));

		FUNC4(et, 0);
	}

	FUNC10(handle, FUNC17(path));

out:
	FUNC8(left_path);
	return ret;
}