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
struct inode_management {int /*<<< orphan*/  ino_lock; int /*<<< orphan*/  ino_root; } ;
struct ino_entry {int dummy; } ;
struct f2fs_sb_info {struct inode_management* im; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 struct ino_entry* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(struct f2fs_sb_info *sbi, nid_t ino, int mode)
{
	struct inode_management *im = &sbi->im[mode];
	struct ino_entry *e;

	FUNC1(&im->ino_lock);
	e = FUNC0(&im->ino_root, ino);
	FUNC2(&im->ino_lock);
	return e ? true : false;
}