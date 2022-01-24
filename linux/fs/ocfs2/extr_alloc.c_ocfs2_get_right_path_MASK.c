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
typedef  scalar_t__ u32 ;
struct ocfs2_path {scalar_t__ p_tree_depth; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_list {scalar_t__ l_next_free_rec; scalar_t__ l_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct ocfs2_path*,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct ocfs2_path*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_path*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct ocfs2_path* FUNC6 (struct ocfs2_path*) ; 
 struct ocfs2_extent_list* FUNC7 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC8(struct ocfs2_extent_tree *et,
				struct ocfs2_path *left_path,
				struct ocfs2_path **ret_right_path)
{
	int ret;
	u32 right_cpos;
	struct ocfs2_path *right_path = NULL;
	struct ocfs2_extent_list *left_el;

	*ret_right_path = NULL;

	/* This function shouldn't be called for non-trees. */
	FUNC0(left_path->p_tree_depth == 0);

	left_el = FUNC7(left_path);
	FUNC0(left_el->l_next_free_rec != left_el->l_count);

	ret = FUNC2(FUNC5(et->et_ci),
					     left_path, &right_cpos);
	if (ret) {
		FUNC1(ret);
		goto out;
	}

	/* This function shouldn't be called for the rightmost leaf. */
	FUNC0(right_cpos == 0);

	right_path = FUNC6(left_path);
	if (!right_path) {
		ret = -ENOMEM;
		FUNC1(ret);
		goto out;
	}

	ret = FUNC3(et->et_ci, right_path, right_cpos);
	if (ret) {
		FUNC1(ret);
		goto out;
	}

	*ret_right_path = right_path;
out:
	if (ret)
		FUNC4(right_path);
	return ret;
}