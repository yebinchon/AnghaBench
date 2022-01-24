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
struct f2fs_sb_info {int /*<<< orphan*/ * inode_lock; int /*<<< orphan*/ * inode_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  gdirty_list; } ;

/* Variables and functions */
 size_t DIRTY_META ; 
 int /*<<< orphan*/  F2FS_DIRTY_IMETA ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FI_DIRTY_INODE ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,size_t) ; 

int FUNC10(struct inode *inode, bool sync)
{
	struct f2fs_sb_info *sbi = FUNC1(inode);
	int ret = 0;

	FUNC7(&sbi->inode_lock[DIRTY_META]);
	if (FUNC3(inode, FI_DIRTY_INODE)) {
		ret = 1;
	} else {
		FUNC6(inode, FI_DIRTY_INODE);
		FUNC9(sbi, DIRTY_META);
	}
	if (sync && FUNC5(&FUNC0(inode)->gdirty_list)) {
		FUNC4(&FUNC0(inode)->gdirty_list,
				&sbi->inode_list[DIRTY_META]);
		FUNC2(sbi, F2FS_DIRTY_IMETA);
	}
	FUNC8(&sbi->inode_lock[DIRTY_META]);
	return ret;
}