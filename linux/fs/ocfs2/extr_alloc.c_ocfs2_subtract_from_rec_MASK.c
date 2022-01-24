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
typedef  int /*<<< orphan*/  u64 ;
struct super_block {int dummy; } ;
struct ocfs2_extent_rec {int /*<<< orphan*/  e_leaf_clusters; int /*<<< orphan*/  e_blkno; int /*<<< orphan*/  e_cpos; } ;
typedef  enum ocfs2_split_type { ____Placeholder_ocfs2_split_type } ocfs2_split_type ;

/* Variables and functions */
 int SPLIT_LEFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct super_block *sb,
				    enum ocfs2_split_type split,
				    struct ocfs2_extent_rec *rec,
				    struct ocfs2_extent_rec *split_rec)
{
	u64 len_blocks;

	len_blocks = FUNC4(sb,
				FUNC1(split_rec->e_leaf_clusters));

	if (split == SPLIT_LEFT) {
		/*
		 * Region is on the left edge of the existing
		 * record.
		 */
		FUNC2(&rec->e_cpos,
			     FUNC1(split_rec->e_leaf_clusters));
		FUNC3(&rec->e_blkno, len_blocks);
		FUNC0(&rec->e_leaf_clusters,
			     -FUNC1(split_rec->e_leaf_clusters));
	} else {
		/*
		 * Region is on the right edge of the existing
		 * record.
		 */
		FUNC0(&rec->e_leaf_clusters,
			     -FUNC1(split_rec->e_leaf_clusters));
	}
}