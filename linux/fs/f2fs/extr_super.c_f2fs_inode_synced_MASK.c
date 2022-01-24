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
struct f2fs_sb_info {int /*<<< orphan*/ * inode_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  gdirty_list; } ;

/* Variables and functions */
 size_t DIRTY_META ; 
 int /*<<< orphan*/  F2FS_DIRTY_IMETA ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FI_AUTO_RECOVER ; 
 int /*<<< orphan*/  FI_DIRTY_INODE ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,size_t) ; 

void FUNC10(struct inode *inode)
{
	struct f2fs_sb_info *sbi = FUNC1(inode);

	FUNC7(&sbi->inode_lock[DIRTY_META]);
	if (!FUNC4(inode, FI_DIRTY_INODE)) {
		FUNC8(&sbi->inode_lock[DIRTY_META]);
		return;
	}
	if (!FUNC6(&FUNC0(inode)->gdirty_list)) {
		FUNC5(&FUNC0(inode)->gdirty_list);
		FUNC3(sbi, F2FS_DIRTY_IMETA);
	}
	FUNC2(inode, FI_DIRTY_INODE);
	FUNC2(inode, FI_AUTO_RECOVER);
	FUNC9(FUNC1(inode), DIRTY_META);
	FUNC8(&sbi->inode_lock[DIRTY_META]);
}