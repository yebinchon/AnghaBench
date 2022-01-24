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
struct inode_management {int /*<<< orphan*/  ino_lock; int /*<<< orphan*/  ino_num; int /*<<< orphan*/  ino_list; int /*<<< orphan*/  ino_root; } ;
struct ino_entry {int /*<<< orphan*/  dirty_device; int /*<<< orphan*/  list; int /*<<< orphan*/  ino; } ;
struct f2fs_sb_info {struct inode_management* im; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 int FLUSH_INO ; 
 int GFP_NOFS ; 
 int ORPHAN_INO ; 
 int __GFP_NOFAIL ; 
 int /*<<< orphan*/  FUNC0 (struct f2fs_sb_info*,int) ; 
 struct ino_entry* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,char*) ; 
 int /*<<< orphan*/  ino_entry_slab ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ino_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ino_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ino_entry*) ; 
 struct ino_entry* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct f2fs_sb_info *sbi, nid_t ino,
						unsigned int devidx, int type)
{
	struct inode_management *im = &sbi->im[type];
	struct ino_entry *e, *tmp;

	tmp = FUNC1(ino_entry_slab, GFP_NOFS);

	FUNC8(GFP_NOFS | __GFP_NOFAIL);

	FUNC10(&im->ino_lock);
	e = FUNC7(&im->ino_root, ino);
	if (!e) {
		e = tmp;
		if (FUNC12(FUNC6(&im->ino_root, ino, e)))
			FUNC0(sbi, 1);

		FUNC5(e, 0, sizeof(struct ino_entry));
		e->ino = ino;

		FUNC4(&e->list, &im->ino_list);
		if (type != ORPHAN_INO)
			im->ino_num++;
	}

	if (type == FLUSH_INO)
		FUNC2(devidx, (char *)&e->dirty_device);

	FUNC11(&im->ino_lock);
	FUNC9();

	if (e != tmp)
		FUNC3(ino_entry_slab, tmp);
}