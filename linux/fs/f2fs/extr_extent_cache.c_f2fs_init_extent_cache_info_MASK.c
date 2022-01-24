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
struct f2fs_sb_info {int /*<<< orphan*/  total_ext_node; int /*<<< orphan*/  total_zombie_tree; int /*<<< orphan*/  zombie_list; int /*<<< orphan*/  total_ext_tree; int /*<<< orphan*/  extent_lock; int /*<<< orphan*/  extent_list; int /*<<< orphan*/  extent_tree_lock; int /*<<< orphan*/  extent_tree_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct f2fs_sb_info *sbi)
{
	FUNC1(&sbi->extent_tree_root, GFP_NOIO);
	FUNC3(&sbi->extent_tree_lock);
	FUNC0(&sbi->extent_list);
	FUNC4(&sbi->extent_lock);
	FUNC2(&sbi->total_ext_tree, 0);
	FUNC0(&sbi->zombie_list);
	FUNC2(&sbi->total_zombie_tree, 0);
	FUNC2(&sbi->total_ext_node, 0);
}