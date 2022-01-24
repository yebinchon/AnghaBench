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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_sb_info {int /*<<< orphan*/  s_freeclusters_counter; int /*<<< orphan*/  s_dirtyclusters_counter; } ;
struct ext4_inode_info {int /*<<< orphan*/  i_block_reservation_lock; int /*<<< orphan*/  i_reserved_data_blocks; } ;
typedef  int /*<<< orphan*/  ext4_lblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ext4_sb_info*,int) ; 
 struct ext4_inode_info* FUNC1 (struct inode*) ; 
 struct ext4_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct inode *inode, ext4_lblk_t lblk)
{
	struct ext4_sb_info *sbi = FUNC2(inode->i_sb);
	struct ext4_inode_info *ei = FUNC1(inode);

	FUNC3(inode, FUNC0(sbi, 1));

	FUNC6(&ei->i_block_reservation_lock);
	ei->i_reserved_data_blocks++;
	FUNC5(&sbi->s_dirtyclusters_counter, 1);
	FUNC7(&ei->i_block_reservation_lock);

	FUNC5(&sbi->s_freeclusters_counter, 1);
	FUNC4(inode, lblk);
}