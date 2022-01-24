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
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ctime; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct inode *dir, struct inode *inode)
{
	struct f2fs_sb_info *sbi = FUNC1(dir);

	FUNC4(&FUNC0(inode)->i_sem);

	if (FUNC2(inode->i_mode))
		FUNC6(dir, false);
	inode->i_ctime = FUNC3(inode);

	FUNC6(inode, false);
	if (FUNC2(inode->i_mode)) {
		FUNC6(inode, false);
		FUNC7(inode, 0);
	}
	FUNC9(&FUNC0(inode)->i_sem);

	if (inode->i_nlink == 0)
		FUNC5(inode);
	else
		FUNC8(sbi);
}