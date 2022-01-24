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
struct rb_node {int dummy; } ;
struct f2fs_sb_info {int /*<<< orphan*/  total_ext_node; } ;
struct extent_tree {int /*<<< orphan*/  node_cnt; int /*<<< orphan*/  root; } ;
struct extent_info {int dummy; } ;
struct extent_node {int /*<<< orphan*/  rb_node; struct extent_tree* et; int /*<<< orphan*/  list; struct extent_info ei; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  extent_node_slab ; 
 struct extent_node* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 

__attribute__((used)) static struct extent_node *FUNC5(struct f2fs_sb_info *sbi,
				struct extent_tree *et, struct extent_info *ei,
				struct rb_node *parent, struct rb_node **p,
				bool leftmost)
{
	struct extent_node *en;

	en = FUNC2(extent_node_slab, GFP_ATOMIC);
	if (!en)
		return NULL;

	en->ei = *ei;
	FUNC0(&en->list);
	en->et = et;

	FUNC4(&en->rb_node, parent, p);
	FUNC3(&en->rb_node, &et->root, leftmost);
	FUNC1(&et->node_cnt);
	FUNC1(&sbi->total_ext_node);
	return en;
}