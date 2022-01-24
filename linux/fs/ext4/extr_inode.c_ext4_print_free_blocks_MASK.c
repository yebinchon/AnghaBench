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
struct inode {struct super_block* i_sb; } ;
struct ext4_sb_info {int /*<<< orphan*/  s_dirtyclusters_counter; int /*<<< orphan*/  s_freeclusters_counter; } ;
struct ext4_inode_info {long long i_reserved_data_blocks; } ;

/* Variables and functions */
 long long FUNC0 (struct ext4_sb_info*,int /*<<< orphan*/ ) ; 
 struct ext4_inode_info* FUNC1 (struct inode*) ; 
 struct ext4_sb_info* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  KERN_CRIT ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct inode *inode)
{
	struct ext4_sb_info *sbi = FUNC2(inode->i_sb);
	struct super_block *sb = inode->i_sb;
	struct ext4_inode_info *ei = FUNC1(inode);

	FUNC4(sb, KERN_CRIT, "Total free blocks count %lld",
	       FUNC0(FUNC2(inode->i_sb),
			FUNC3(sb)));
	FUNC4(sb, KERN_CRIT, "Free/Dirty block details");
	FUNC4(sb, KERN_CRIT, "free_blocks=%lld",
	       (long long) FUNC0(FUNC2(sb),
		FUNC5(&sbi->s_freeclusters_counter)));
	FUNC4(sb, KERN_CRIT, "dirty_blocks=%lld",
	       (long long) FUNC0(FUNC2(sb),
		FUNC5(&sbi->s_dirtyclusters_counter)));
	FUNC4(sb, KERN_CRIT, "Block reservation details");
	FUNC4(sb, KERN_CRIT, "i_reserved_data_blocks=%u",
		 ei->i_reserved_data_blocks);
	return;
}