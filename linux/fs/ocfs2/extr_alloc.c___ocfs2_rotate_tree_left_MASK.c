#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct ocfs2_path {int /*<<< orphan*/  p_tree_depth; TYPE_2__* p_node; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_6__ {int /*<<< orphan*/ * l_recs; } ;
struct TYPE_5__ {TYPE_1__* bh; } ;
struct TYPE_4__ {scalar_t__ b_blocknr; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_path*,struct ocfs2_path*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct ocfs2_path*) ; 
 int FUNC3 (struct super_block*,struct ocfs2_path*,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct ocfs2_path*,scalar_t__) ; 
 int FUNC5 (struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct super_block* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_path*,struct ocfs2_path*) ; 
 struct ocfs2_path* FUNC10 (struct ocfs2_path*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ocfs2_path*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*,int,struct ocfs2_cached_dealloc_ctxt*,int*) ; 
 TYPE_3__* FUNC13 (struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC14 (int,unsigned long long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(handle_t *handle,
				    struct ocfs2_extent_tree *et,
				    int orig_credits,
				    struct ocfs2_path *path,
				    struct ocfs2_cached_dealloc_ctxt *dealloc,
				    struct ocfs2_path **empty_extent_path)
{
	int ret, subtree_root, deleted;
	u32 right_cpos;
	struct ocfs2_path *left_path = NULL;
	struct ocfs2_path *right_path = NULL;
	struct super_block *sb = FUNC8(et->et_ci);

	if (!FUNC7(&(FUNC13(path)->l_recs[0])))
		return 0;

	*empty_extent_path = NULL;

	ret = FUNC3(sb, path, &right_cpos);
	if (ret) {
		FUNC0(ret);
		goto out;
	}

	left_path = FUNC10(path);
	if (!left_path) {
		ret = -ENOMEM;
		FUNC0(ret);
		goto out;
	}

	FUNC1(left_path, path);

	right_path = FUNC10(path);
	if (!right_path) {
		ret = -ENOMEM;
		FUNC0(ret);
		goto out;
	}

	while (right_cpos) {
		ret = FUNC4(et->et_ci, right_path, right_cpos);
		if (ret) {
			FUNC0(ret);
			goto out;
		}

		subtree_root = FUNC5(et, left_path,
						       right_path);

		FUNC14(subtree_root,
		     (unsigned long long)
		     right_path->p_node[subtree_root].bh->b_blocknr,
		     right_path->p_tree_depth);

		ret = FUNC2(handle, 0,
						      orig_credits, left_path);
		if (ret) {
			FUNC0(ret);
			goto out;
		}

		/*
		 * Caller might still want to make changes to the
		 * tree root, so re-add it to the journal here.
		 */
		ret = FUNC11(handle, et->et_ci,
						   left_path, 0);
		if (ret) {
			FUNC0(ret);
			goto out;
		}

		ret = FUNC12(handle, et, left_path,
						right_path, subtree_root,
						dealloc, &deleted);
		if (ret == -EAGAIN) {
			/*
			 * The rotation has to temporarily stop due to
			 * the right subtree having an empty
			 * extent. Pass it back to the caller for a
			 * fixup.
			 */
			*empty_extent_path = right_path;
			right_path = NULL;
			goto out;
		}
		if (ret) {
			FUNC0(ret);
			goto out;
		}

		/*
		 * The subtree rotate might have removed records on
		 * the rightmost edge. If so, then rotation is
		 * complete.
		 */
		if (deleted)
			break;

		FUNC9(left_path, right_path);

		ret = FUNC3(sb, left_path,
						     &right_cpos);
		if (ret) {
			FUNC0(ret);
			goto out;
		}
	}

out:
	FUNC6(right_path);
	FUNC6(left_path);

	return ret;
}