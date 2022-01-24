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
struct inode {int /*<<< orphan*/  i_ino; } ;
struct f2fs_sb_info {int /*<<< orphan*/  extent_tree_lock; int /*<<< orphan*/  total_zombie_tree; int /*<<< orphan*/  total_ext_tree; int /*<<< orphan*/  extent_tree_root; } ;
struct extent_tree {int /*<<< orphan*/  list; int /*<<< orphan*/  node_cnt; int /*<<< orphan*/  lock; int /*<<< orphan*/ * cached_en; int /*<<< orphan*/  root; int /*<<< orphan*/  ino; } ;
typedef  int /*<<< orphan*/  nid_t ;
struct TYPE_2__ {struct extent_tree* extent_tree; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT_CACHED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  extent_tree_slab ; 
 struct extent_tree* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct extent_tree*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_tree*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct extent_tree* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct extent_tree *FUNC14(struct inode *inode)
{
	struct f2fs_sb_info *sbi = FUNC1(inode);
	struct extent_tree *et;
	nid_t ino = inode->i_ino;

	FUNC10(&sbi->extent_tree_lock);
	et = FUNC12(&sbi->extent_tree_root, ino);
	if (!et) {
		et = FUNC6(extent_tree_slab, GFP_NOFS);
		FUNC7(&sbi->extent_tree_root, ino, et);
		FUNC9(et, 0, sizeof(struct extent_tree));
		et->ino = ino;
		et->root = RB_ROOT_CACHED;
		et->cached_en = NULL;
		FUNC13(&et->lock);
		FUNC2(&et->list);
		FUNC5(&et->node_cnt, 0);
		FUNC4(&sbi->total_ext_tree);
	} else {
		FUNC3(&sbi->total_zombie_tree);
		FUNC8(&et->list);
	}
	FUNC11(&sbi->extent_tree_lock);

	/* never died until evict_inode */
	FUNC0(inode)->extent_tree = et;

	return et;
}