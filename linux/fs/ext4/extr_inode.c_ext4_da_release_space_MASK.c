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
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct ext4_sb_info {int /*<<< orphan*/  s_dirtyclusters_counter; } ;
struct ext4_inode_info {int i_reserved_data_blocks; int /*<<< orphan*/  i_block_reservation_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ext4_sb_info*,int) ; 
 struct ext4_inode_info* FUNC1 (struct inode*) ; 
 struct ext4_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int) ; 
 scalar_t__ FUNC10 (int) ; 

void FUNC11(struct inode *inode, int to_free)
{
	struct ext4_sb_info *sbi = FUNC2(inode->i_sb);
	struct ext4_inode_info *ei = FUNC1(inode);

	if (!to_free)
		return;		/* Nothing to release, exit */

	FUNC7(&FUNC1(inode)->i_block_reservation_lock);

	FUNC9(inode, to_free);
	if (FUNC10(to_free > ei->i_reserved_data_blocks)) {
		/*
		 * if there aren't enough reserved blocks, then the
		 * counter is messed up somewhere.  Since this
		 * function is called from invalidate page, it's
		 * harmless to return without any action.
		 */
		FUNC5(inode->i_sb, "ext4_da_release_space: "
			 "ino %lu, to_free %d with only %d reserved "
			 "data blocks", inode->i_ino, to_free,
			 ei->i_reserved_data_blocks);
		FUNC3(1);
		to_free = ei->i_reserved_data_blocks;
	}
	ei->i_reserved_data_blocks -= to_free;

	/* update fs dirty data blocks counter */
	FUNC6(&sbi->s_dirtyclusters_counter, to_free);

	FUNC8(&FUNC1(inode)->i_block_reservation_lock);

	FUNC4(inode, FUNC0(sbi, to_free));
}