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
struct inode {scalar_t__ i_ino; } ;
struct f2fs_sb_info {int dummy; } ;

/* Variables and functions */
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FI_AUTO_RECOVER ; 
 int I_DIRTY_TIME ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int) ; 
 scalar_t__ FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct inode *inode, int flags)
{
	struct f2fs_sb_info *sbi = FUNC0(inode);

	if (inode->i_ino == FUNC2(sbi) ||
			inode->i_ino == FUNC1(sbi))
		return;

	if (flags == I_DIRTY_TIME)
		return;

	if (FUNC5(inode, FI_AUTO_RECOVER))
		FUNC3(inode, FI_AUTO_RECOVER);

	FUNC4(inode, false);
}