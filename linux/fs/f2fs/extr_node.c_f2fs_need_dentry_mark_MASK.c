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
struct nat_entry {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int /*<<< orphan*/  nat_tree_lock; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  HAS_FSYNCED_INODE ; 
 int /*<<< orphan*/  IS_CHECKPOINTED ; 
 struct f2fs_nm_info* FUNC0 (struct f2fs_sb_info*) ; 
 struct nat_entry* FUNC1 (struct f2fs_nm_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nat_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct f2fs_sb_info *sbi, nid_t nid)
{
	struct f2fs_nm_info *nm_i = FUNC0(sbi);
	struct nat_entry *e;
	bool need = false;

	FUNC2(&nm_i->nat_tree_lock);
	e = FUNC1(nm_i, nid);
	if (e) {
		if (!FUNC3(e, IS_CHECKPOINTED) &&
				!FUNC3(e, HAS_FSYNCED_INODE))
			need = true;
	}
	FUNC4(&nm_i->nat_tree_lock);
	return need;
}