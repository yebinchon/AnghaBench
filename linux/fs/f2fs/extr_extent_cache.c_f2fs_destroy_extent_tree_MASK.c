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
struct inode {int /*<<< orphan*/  i_ino; scalar_t__ i_nlink; } ;
struct f2fs_sb_info {int /*<<< orphan*/  extent_tree_lock; int /*<<< orphan*/  total_ext_tree; int /*<<< orphan*/  extent_tree_root; int /*<<< orphan*/  total_zombie_tree; int /*<<< orphan*/  zombie_list; } ;
struct extent_tree {int /*<<< orphan*/  node_cnt; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {struct extent_tree* extent_tree; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  extent_tree_slab ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,scalar_t__) ; 
 unsigned int FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct extent_tree*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,unsigned int) ; 

void FUNC14(struct inode *inode)
{
	struct f2fs_sb_info *sbi = FUNC1(inode);
	struct extent_tree *et = FUNC0(inode)->extent_tree;
	unsigned int node_cnt = 0;

	if (!et)
		return;

	if (inode->i_nlink && !FUNC7(inode) &&
					FUNC4(&et->node_cnt)) {
		FUNC10(&sbi->extent_tree_lock);
		FUNC9(&et->list, &sbi->zombie_list);
		FUNC3(&sbi->total_zombie_tree);
		FUNC11(&sbi->extent_tree_lock);
		return;
	}

	/* free all extent info belong to this extent tree */
	node_cnt = FUNC6(inode);

	/* delete extent tree entry in radix tree */
	FUNC10(&sbi->extent_tree_lock);
	FUNC5(sbi, FUNC4(&et->node_cnt));
	FUNC12(&sbi->extent_tree_root, inode->i_ino);
	FUNC8(extent_tree_slab, et);
	FUNC2(&sbi->total_ext_tree);
	FUNC11(&sbi->extent_tree_lock);

	FUNC0(inode)->extent_tree = NULL;

	FUNC13(inode, node_cnt);
}