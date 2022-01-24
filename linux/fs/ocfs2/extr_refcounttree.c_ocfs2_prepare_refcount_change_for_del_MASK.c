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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_refcount_tree {int /*<<< orphan*/  rf_ci; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_refcount_tree**) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

int FUNC12(struct inode *inode,
					  u64 refcount_loc,
					  u64 phys_blkno,
					  u32 clusters,
					  int *credits,
					  int *ref_blocks)
{
	int ret;
	struct buffer_head *ref_root_bh = NULL;
	struct ocfs2_refcount_tree *tree;
	u64 start_cpos = FUNC4(inode->i_sb, phys_blkno);

	if (!FUNC10(FUNC1(inode->i_sb))) {
		ret = FUNC6(inode->i_sb, "Inode %lu want to use refcount tree, but the feature bit is not set in the super block\n",
				  inode->i_ino);
		goto out;
	}

	FUNC0(!FUNC8(inode));

	ret = FUNC7(FUNC1(inode->i_sb),
				      refcount_loc, &tree);
	if (ret) {
		FUNC3(ret);
		goto out;
	}

	ret = FUNC9(&tree->rf_ci, refcount_loc,
					&ref_root_bh);
	if (ret) {
		FUNC3(ret);
		goto out;
	}

	ret = FUNC5(inode->i_sb,
					       &tree->rf_ci,
					       ref_root_bh,
					       start_cpos, clusters,
					       ref_blocks, credits);
	if (ret) {
		FUNC3(ret);
		goto out;
	}

	FUNC11(*ref_blocks, *credits);

out:
	FUNC2(ref_root_bh);
	return ret;
}