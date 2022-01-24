#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct extent_tree {int /*<<< orphan*/  lock; TYPE_1__ largest; } ;
struct TYPE_4__ {struct extent_tree* extent_tree; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FI_NO_EXTENT ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,struct extent_tree*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct inode *inode)
{
	struct f2fs_sb_info *sbi = FUNC1(inode);
	struct extent_tree *et = FUNC0(inode)->extent_tree;
	bool updated = false;

	if (!FUNC4(inode))
		return;

	FUNC5(inode, FI_NO_EXTENT);

	FUNC6(&et->lock);
	FUNC2(sbi, et);
	if (et->largest.len) {
		et->largest.len = 0;
		updated = true;
	}
	FUNC7(&et->lock);
	if (updated)
		FUNC3(inode, true);
}