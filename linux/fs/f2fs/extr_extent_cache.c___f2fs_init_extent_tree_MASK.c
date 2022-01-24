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
struct inode {int dummy; } ;
struct f2fs_sb_info {int /*<<< orphan*/  extent_lock; int /*<<< orphan*/  extent_list; } ;
struct f2fs_extent {scalar_t__ len; } ;
struct extent_tree {int /*<<< orphan*/  lock; int /*<<< orphan*/  node_cnt; } ;
struct extent_node {int /*<<< orphan*/  list; } ;
struct extent_info {int dummy; } ;

/* Variables and functions */
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 struct extent_tree* FUNC1 (struct inode*) ; 
 struct extent_node* FUNC2 (struct f2fs_sb_info*,struct extent_tree*,struct extent_info*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_info*,struct f2fs_extent*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC11(struct inode *inode, struct f2fs_extent *i_ext)
{
	struct f2fs_sb_info *sbi = FUNC0(inode);
	struct extent_tree *et;
	struct extent_node *en;
	struct extent_info ei;

	if (!FUNC4(inode)) {
		/* drop largest extent */
		if (i_ext && i_ext->len) {
			i_ext->len = 0;
			return true;
		}
		return false;
	}

	et = FUNC1(inode);

	if (!i_ext || !i_ext->len)
		return false;

	FUNC5(&ei, i_ext);

	FUNC9(&et->lock);
	if (FUNC3(&et->node_cnt))
		goto out;

	en = FUNC2(sbi, et, &ei);
	if (en) {
		FUNC7(&sbi->extent_lock);
		FUNC6(&en->list, &sbi->extent_list);
		FUNC8(&sbi->extent_lock);
	}
out:
	FUNC10(&et->lock);
	return false;
}