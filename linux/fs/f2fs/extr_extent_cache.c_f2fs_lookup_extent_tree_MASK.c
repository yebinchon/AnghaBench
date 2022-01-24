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
struct rb_entry {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_sb_info {int /*<<< orphan*/  extent_lock; int /*<<< orphan*/  extent_list; } ;
struct extent_info {scalar_t__ fofs; scalar_t__ len; } ;
struct extent_tree {int /*<<< orphan*/  lock; struct extent_node* cached_en; int /*<<< orphan*/  root; struct extent_info largest; } ;
struct extent_node {int /*<<< orphan*/  list; struct extent_info ei; } ;
typedef  scalar_t__ pgoff_t ;
struct TYPE_2__ {struct extent_tree* extent_tree; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct rb_entry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,scalar_t__,struct extent_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,scalar_t__) ; 

__attribute__((used)) static bool FUNC16(struct inode *inode, pgoff_t pgofs,
							struct extent_info *ei)
{
	struct f2fs_sb_info *sbi = FUNC1(inode);
	struct extent_tree *et = FUNC0(inode)->extent_tree;
	struct extent_node *en;
	bool ret = false;

	FUNC2(sbi, !et);

	FUNC15(inode, pgofs);

	FUNC6(&et->lock);

	if (et->largest.fofs <= pgofs &&
			et->largest.fofs + et->largest.len > pgofs) {
		*ei = et->largest;
		ret = true;
		FUNC11(sbi);
		goto out;
	}

	en = (struct extent_node *)FUNC3(&et->root,
				(struct rb_entry *)et->cached_en, pgofs);
	if (!en)
		goto out;

	if (en == et->cached_en)
		FUNC10(sbi);
	else
		FUNC12(sbi);

	*ei = en->ei;
	FUNC8(&sbi->extent_lock);
	if (!FUNC4(&en->list)) {
		FUNC5(&en->list, &sbi->extent_list);
		et->cached_en = en;
	}
	FUNC9(&sbi->extent_lock);
	ret = true;
out:
	FUNC13(sbi);
	FUNC7(&et->lock);

	FUNC14(inode, pgofs, ei);
	return ret;
}