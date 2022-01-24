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
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct ocfs2_extent_tree {int /*<<< orphan*/  et_root_el; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_alloc_context*) ; 
 int FUNC6 (struct ocfs2_extent_tree*) ; 
 int FUNC7 (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ; 
 scalar_t__ FUNC8 (struct ocfs2_super*) ; 

__attribute__((used)) static int FUNC9(struct inode *inode,
					struct ocfs2_extent_tree *et,
					u32 clusters_to_move,
					u32 extents_to_split,
					struct ocfs2_alloc_context **meta_ac,
					int extra_blocks,
					int *credits)
{
	int ret, num_free_extents;
	unsigned int max_recs_needed = 2 * extents_to_split + clusters_to_move;
	struct ocfs2_super *osb = FUNC0(inode->i_sb);

	num_free_extents = FUNC6(et);
	if (num_free_extents < 0) {
		ret = num_free_extents;
		FUNC2(ret);
		goto out;
	}

	if (!num_free_extents ||
	    (FUNC8(osb) && num_free_extents < max_recs_needed))
		extra_blocks += FUNC4(et->et_root_el);

	ret = FUNC7(osb, extra_blocks, meta_ac);
	if (ret) {
		FUNC2(ret);
		goto out;
	}


	*credits += FUNC3(osb->sb, et->et_root_el);

	FUNC1(0, "reserve metadata_blocks: %d, data_clusters: %u, credits: %d\n",
	     extra_blocks, clusters_to_move, *credits);
out:
	if (ret) {
		if (*meta_ac) {
			FUNC5(*meta_ac);
			*meta_ac = NULL;
		}
	}

	return ret;
}