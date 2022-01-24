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
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct extent_tree {int /*<<< orphan*/  lock; int /*<<< orphan*/  node_cnt; } ;
struct TYPE_2__ {struct extent_tree* extent_tree; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 unsigned int FUNC2 (struct f2fs_sb_info*,struct extent_tree*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

unsigned int FUNC6(struct inode *inode)
{
	struct f2fs_sb_info *sbi = FUNC1(inode);
	struct extent_tree *et = FUNC0(inode)->extent_tree;
	unsigned int node_cnt = 0;

	if (!et || !FUNC3(&et->node_cnt))
		return 0;

	FUNC4(&et->lock);
	node_cnt = FUNC2(sbi, et);
	FUNC5(&et->lock);

	return node_cnt;
}