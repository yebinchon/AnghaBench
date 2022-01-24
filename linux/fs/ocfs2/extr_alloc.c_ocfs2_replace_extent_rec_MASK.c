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
struct ocfs2_path {int dummy; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_ci; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ocfs2_path*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_path*) ; 
 scalar_t__ FUNC4 (struct ocfs2_path*) ; 

__attribute__((used)) static int FUNC5(handle_t *handle,
				    struct ocfs2_extent_tree *et,
				    struct ocfs2_path *path,
				    struct ocfs2_extent_list *el,
				    int split_index,
				    struct ocfs2_extent_rec *split_rec)
{
	int ret;

	ret = FUNC2(handle, et->et_ci, path,
					   FUNC4(path) - 1);
	if (ret) {
		FUNC0(ret);
		goto out;
	}

	el->l_recs[split_index] = *split_rec;

	FUNC1(handle, FUNC3(path));
out:
	return ret;
}