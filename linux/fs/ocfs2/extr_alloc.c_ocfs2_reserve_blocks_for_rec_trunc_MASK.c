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
typedef  int u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_root_el; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int ENOSPC ; 
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_alloc_context*) ; 
 int FUNC4 (struct ocfs2_extent_tree*) ; 
 int FUNC5 (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ; 
 scalar_t__ FUNC6 (struct ocfs2_super*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode,
					      struct ocfs2_extent_tree *et,
					      u32 extents_to_split,
					      struct ocfs2_alloc_context **ac,
					      int extra_blocks)
{
	int ret = 0, num_free_extents;
	unsigned int max_recs_needed = 2 * extents_to_split;
	struct ocfs2_super *osb = FUNC0(inode->i_sb);

	*ac = NULL;

	num_free_extents = FUNC4(et);
	if (num_free_extents < 0) {
		ret = num_free_extents;
		FUNC1(ret);
		goto out;
	}

	if (!num_free_extents ||
	    (FUNC6(osb) && num_free_extents < max_recs_needed))
		extra_blocks += FUNC2(et->et_root_el);

	if (extra_blocks) {
		ret = FUNC5(osb, extra_blocks, ac);
		if (ret < 0) {
			if (ret != -ENOSPC)
				FUNC1(ret);
		}
	}

out:
	if (ret) {
		if (*ac) {
			FUNC3(*ac);
			*ac = NULL;
		}
	}

	return ret;
}