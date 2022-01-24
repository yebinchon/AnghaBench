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
struct f2fs_sb_info {int /*<<< orphan*/  extent_lock; int /*<<< orphan*/  extent_list; } ;
struct extent_tree {struct extent_node* cached_en; } ;
struct extent_info {scalar_t__ len; int /*<<< orphan*/  blk; int /*<<< orphan*/  fofs; } ;
struct extent_node {int /*<<< orphan*/  list; struct extent_info ei; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct extent_info*,struct extent_info*) ; 
 scalar_t__ FUNC1 (struct extent_info*,struct extent_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,struct extent_tree*,struct extent_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_tree*,struct extent_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct extent_node *FUNC8(struct f2fs_sb_info *sbi,
				struct extent_tree *et, struct extent_info *ei,
				struct extent_node *prev_ex,
				struct extent_node *next_ex)
{
	struct extent_node *en = NULL;

	if (prev_ex && FUNC0(ei, &prev_ex->ei)) {
		prev_ex->ei.len += ei->len;
		ei = &prev_ex->ei;
		en = prev_ex;
	}

	if (next_ex && FUNC1(ei, &next_ex->ei)) {
		next_ex->ei.fofs = ei->fofs;
		next_ex->ei.blk = ei->blk;
		next_ex->ei.len += ei->len;
		if (en)
			FUNC2(sbi, et, prev_ex);

		en = next_ex;
	}

	if (!en)
		return NULL;

	FUNC3(et, en);

	FUNC6(&sbi->extent_lock);
	if (!FUNC4(&en->list)) {
		FUNC5(&en->list, &sbi->extent_list);
		et->cached_en = en;
	}
	FUNC7(&sbi->extent_lock);
	return en;
}