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
struct writeback_control {scalar_t__ nr_to_write; } ;
struct inode {scalar_t__ i_ino; } ;
struct f2fs_sb_info {int dummy; } ;

/* Variables and functions */
 int ENOSPC ; 
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FI_DIRTY_INODE ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 

int FUNC7(struct inode *inode, struct writeback_control *wbc)
{
	struct f2fs_sb_info *sbi = FUNC0(inode);

	if (inode->i_ino == FUNC2(sbi) ||
			inode->i_ino == FUNC1(sbi))
		return 0;

	if (!FUNC6(inode, FI_DIRTY_INODE))
		return 0;

	if (!FUNC4(sbi))
		return -ENOSPC;

	/*
	 * We need to balance fs here to prevent from producing dirty node pages
	 * during the urgent cleaning time when runing out of free sections.
	 */
	FUNC5(inode);
	if (wbc && wbc->nr_to_write)
		FUNC3(sbi, true);
	return 0;
}