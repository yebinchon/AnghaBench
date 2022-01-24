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
struct f2fs_sb_info {int /*<<< orphan*/  extent_lock; int /*<<< orphan*/  extent_list; } ;
struct extent_tree {struct extent_node* cached_en; int /*<<< orphan*/  root; } ;
struct extent_node {int /*<<< orphan*/  list; } ;
struct extent_info {int /*<<< orphan*/  fofs; } ;

/* Variables and functions */
 struct extent_node* FUNC0 (struct f2fs_sb_info*,struct extent_tree*,struct extent_info*,struct rb_node*,struct rb_node**,int) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_tree*,struct extent_node*) ; 
 struct rb_node** FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ *,struct rb_node**,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct extent_node *FUNC6(struct f2fs_sb_info *sbi,
				struct extent_tree *et, struct extent_info *ei,
				struct rb_node **insert_p,
				struct rb_node *insert_parent,
				bool leftmost)
{
	struct rb_node **p;
	struct rb_node *parent = NULL;
	struct extent_node *en = NULL;

	if (insert_p && insert_parent) {
		parent = insert_parent;
		p = insert_p;
		goto do_insert;
	}

	leftmost = true;

	p = FUNC2(sbi, &et->root, &parent,
						ei->fofs, &leftmost);
do_insert:
	en = FUNC0(sbi, et, ei, parent, p, leftmost);
	if (!en)
		return NULL;

	FUNC1(et, en);

	/* update in global extent list */
	FUNC4(&sbi->extent_lock);
	FUNC3(&en->list, &sbi->extent_list);
	et->cached_en = en;
	FUNC5(&sbi->extent_lock);
	return en;
}