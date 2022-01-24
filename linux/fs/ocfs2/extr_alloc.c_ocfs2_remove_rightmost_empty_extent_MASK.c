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
struct ocfs2_super {int dummy; } ;
struct ocfs2_path {int p_tree_depth; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_cached_dealloc_ctxt*) ; 
 int /*<<< orphan*/ * FUNC5 (struct ocfs2_super*,int) ; 

__attribute__((used)) static int FUNC6(struct ocfs2_super *osb,
				struct ocfs2_extent_tree *et,
				struct ocfs2_path *path,
				struct ocfs2_cached_dealloc_ctxt *dealloc)
{
	handle_t *handle;
	int ret;
	int credits = path->p_tree_depth * 2 + 1;

	handle = FUNC5(osb, credits);
	if (FUNC0(handle)) {
		ret = FUNC1(handle);
		FUNC2(ret);
		return ret;
	}

	ret = FUNC4(handle, et, path, dealloc);
	if (ret)
		FUNC2(ret);

	FUNC3(osb, handle);
	return ret;
}