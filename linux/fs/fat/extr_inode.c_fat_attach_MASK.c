#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ nfs; } ;
struct msdos_sb_info {int /*<<< orphan*/  dir_hash_lock; struct hlist_head* dir_hashtable; TYPE_1__ options; int /*<<< orphan*/  inode_hash_lock; struct hlist_head* inode_hashtable; } ;
struct inode {scalar_t__ i_ino; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct hlist_head {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_4__ {int /*<<< orphan*/  i_dir_hash; int /*<<< orphan*/  i_logstart; int /*<<< orphan*/  i_fat_hash; int /*<<< orphan*/  i_pos; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 scalar_t__ MSDOS_ROOT_INO ; 
 struct msdos_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct inode *inode, loff_t i_pos)
{
	struct msdos_sb_info *sbi = FUNC1(inode->i_sb);

	if (inode->i_ino != MSDOS_ROOT_INO) {
		struct hlist_head *head =   sbi->inode_hashtable
					  + FUNC4(i_pos);

		FUNC6(&sbi->inode_hash_lock);
		FUNC0(inode)->i_pos = i_pos;
		FUNC5(&FUNC0(inode)->i_fat_hash, head);
		FUNC7(&sbi->inode_hash_lock);
	}

	/* If NFS support is enabled, cache the mapping of start cluster
	 * to directory inode. This is used during reconnection of
	 * dentries to the filesystem root.
	 */
	if (FUNC2(inode->i_mode) && sbi->options.nfs) {
		struct hlist_head *d_head = sbi->dir_hashtable;
		d_head += FUNC3(FUNC0(inode)->i_logstart);

		FUNC6(&sbi->dir_hash_lock);
		FUNC5(&FUNC0(inode)->i_dir_hash, d_head);
		FUNC7(&sbi->dir_hash_lock);
	}
}