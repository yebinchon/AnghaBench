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
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; } ;
struct f2fs_sb_info {int /*<<< orphan*/ * inode_lock; } ;
struct TYPE_2__ {int last_disk_size; int /*<<< orphan*/  i_sem; int /*<<< orphan*/  i_crtime; scalar_t__ i_disk_time; int /*<<< orphan*/  gdirty_list; } ;

/* Variables and functions */
 size_t DIRTY_META ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FI_AUTO_RECOVER ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC11(struct inode *inode, int dsync)
{
	bool ret;

	if (dsync) {
		struct f2fs_sb_info *sbi = FUNC1(inode);

		FUNC7(&sbi->inode_lock[DIRTY_META]);
		ret = FUNC6(&FUNC0(inode)->gdirty_list);
		FUNC8(&sbi->inode_lock[DIRTY_META]);
		return ret;
	}
	if (!FUNC5(inode, FI_AUTO_RECOVER) ||
			FUNC3(inode) ||
			FUNC4(inode) & ~PAGE_MASK)
		return false;

	if (!FUNC9(FUNC0(inode)->i_disk_time, &inode->i_atime))
		return false;
	if (!FUNC9(FUNC0(inode)->i_disk_time + 1, &inode->i_ctime))
		return false;
	if (!FUNC9(FUNC0(inode)->i_disk_time + 2, &inode->i_mtime))
		return false;
	if (!FUNC9(FUNC0(inode)->i_disk_time + 3,
						&FUNC0(inode)->i_crtime))
		return false;

	FUNC2(&FUNC0(inode)->i_sem);
	ret = FUNC0(inode)->last_disk_size == FUNC4(inode);
	FUNC10(&FUNC0(inode)->i_sem);

	return ret;
}