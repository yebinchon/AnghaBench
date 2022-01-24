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
struct super_block {int dummy; } ;
struct msdos_dir_entry {int /*<<< orphan*/ * name; } ;
struct inode {struct super_block* i_sb; } ;
struct fat_slot_info {int nr_slots; int /*<<< orphan*/  slot_off; struct buffer_head* bh; struct msdos_dir_entry* de; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELETED_FLAG ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int S_ATIME ; 
 int S_MTIME ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct buffer_head*) ; 

int FUNC10(struct inode *dir, struct fat_slot_info *sinfo)
{
	struct super_block *sb = dir->i_sb;
	struct msdos_dir_entry *de;
	struct buffer_head *bh;
	int err = 0, nr_slots;

	/*
	 * First stage: Remove the shortname. By this, the directory
	 * entry is removed.
	 */
	nr_slots = sinfo->nr_slots;
	de = sinfo->de;
	sinfo->de = NULL;
	bh = sinfo->bh;
	sinfo->bh = NULL;
	while (nr_slots && de >= (struct msdos_dir_entry *)bh->b_data) {
		de->name[0] = DELETED_FLAG;
		de--;
		nr_slots--;
	}
	FUNC7(bh, dir);
	if (FUNC0(dir))
		err = FUNC9(bh);
	FUNC2(bh);
	if (err)
		return err;
	FUNC6(dir);

	if (nr_slots) {
		/*
		 * Second stage: remove the remaining longname slots.
		 * (This directory entry is already removed, and so return
		 * the success)
		 */
		err = FUNC1(dir, sinfo->slot_off, nr_slots);
		if (err) {
			FUNC3(sb, KERN_WARNING,
			       "Couldn't remove the long name slots");
		}
	}

	FUNC5(dir, NULL, S_ATIME|S_MTIME);
	if (FUNC0(dir))
		(void)FUNC4(dir);
	else
		FUNC8(dir);

	return 0;
}