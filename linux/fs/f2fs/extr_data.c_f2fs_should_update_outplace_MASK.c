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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_io_info {int /*<<< orphan*/  old_blkaddr; int /*<<< orphan*/  page; } ;

/* Variables and functions */
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  LFS ; 
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

bool FUNC10(struct inode *inode, struct f2fs_io_info *fio)
{
	struct f2fs_sb_info *sbi = FUNC0(inode);

	if (FUNC8(sbi, LFS))
		return true;
	if (FUNC3(inode->i_mode))
		return true;
	if (FUNC2(inode))
		return true;
	if (FUNC4(inode))
		return true;
	if (fio) {
		if (FUNC6(fio->page))
			return true;
		if (FUNC1(fio->page))
			return true;
		if (FUNC9(FUNC7(sbi, SBI_CP_DISABLED) &&
			FUNC5(sbi, fio->old_blkaddr)))
			return true;
	}
	return false;
}