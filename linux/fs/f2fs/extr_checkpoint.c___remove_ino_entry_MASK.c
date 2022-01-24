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
struct inode_management {int /*<<< orphan*/  ino_lock; int /*<<< orphan*/  ino_num; int /*<<< orphan*/  ino_root; } ;
struct ino_entry {int /*<<< orphan*/  list; } ;
struct f2fs_sb_info {struct inode_management* im; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  ino_entry_slab ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ino_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ino_entry* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct f2fs_sb_info *sbi, nid_t ino, int type)
{
	struct inode_management *im = &sbi->im[type];
	struct ino_entry *e;

	FUNC4(&im->ino_lock);
	e = FUNC3(&im->ino_root, ino);
	if (e) {
		FUNC1(&e->list);
		FUNC2(&im->ino_root, ino);
		im->ino_num--;
		FUNC5(&im->ino_lock);
		FUNC0(ino_entry_slab, e);
		return;
	}
	FUNC5(&im->ino_lock);
}