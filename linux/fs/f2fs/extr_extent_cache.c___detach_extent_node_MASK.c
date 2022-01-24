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
struct f2fs_sb_info {int /*<<< orphan*/  total_ext_node; } ;
struct extent_tree {struct extent_node* cached_en; int /*<<< orphan*/  node_cnt; int /*<<< orphan*/  root; } ;
struct extent_node {int /*<<< orphan*/  rb_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  extent_node_slab ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct extent_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct f2fs_sb_info *sbi,
				struct extent_tree *et, struct extent_node *en)
{
	FUNC2(&en->rb_node, &et->root);
	FUNC0(&et->node_cnt);
	FUNC0(&sbi->total_ext_node);

	if (et->cached_en == en)
		et->cached_en = NULL;
	FUNC1(extent_node_slab, en);
}