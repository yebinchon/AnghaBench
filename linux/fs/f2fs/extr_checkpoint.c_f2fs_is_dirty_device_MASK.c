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
struct ino_entry {int /*<<< orphan*/  dirty_device; } ;
struct f2fs_sb_info {struct inode_management* im; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,char*) ; 
 struct ino_entry* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

bool FUNC4(struct f2fs_sb_info *sbi, nid_t ino,
					unsigned int devidx, int type)
{
	struct inode_management *im = &sbi->im[type];
	struct ino_entry *e;
	bool is_dirty = false;

	FUNC2(&im->ino_lock);
	e = FUNC1(&im->ino_root, ino);
	if (e && FUNC0(devidx, (char *)&e->dirty_device))
		is_dirty = true;
	FUNC3(&im->ino_lock);
	return is_dirty;
}