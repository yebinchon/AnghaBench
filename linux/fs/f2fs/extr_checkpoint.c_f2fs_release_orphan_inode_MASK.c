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
struct inode_management {scalar_t__ ino_num; int /*<<< orphan*/  ino_lock; } ;
struct f2fs_sb_info {struct inode_management* im; } ;

/* Variables and functions */
 size_t ORPHAN_INO ; 
 int /*<<< orphan*/  FUNC0 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct f2fs_sb_info *sbi)
{
	struct inode_management *im = &sbi->im[ORPHAN_INO];

	FUNC1(&im->ino_lock);
	FUNC0(sbi, im->ino_num == 0);
	im->ino_num--;
	FUNC2(&im->ino_lock);
}