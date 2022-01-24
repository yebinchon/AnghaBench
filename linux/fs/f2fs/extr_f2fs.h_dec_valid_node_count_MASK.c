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
struct inode {scalar_t__ i_blocks; int /*<<< orphan*/  i_ino; } ;
struct f2fs_sb_info {scalar_t__ reserved_blocks; scalar_t__ current_reserved_blocks; int /*<<< orphan*/  stat_lock; int /*<<< orphan*/  total_valid_block_count; int /*<<< orphan*/  total_valid_node_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  SBI_NEED_FSCK ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static inline void FUNC8(struct f2fs_sb_info *sbi,
					struct inode *inode, bool is_inode)
{
	FUNC5(&sbi->stat_lock);

	FUNC1(sbi, !sbi->total_valid_block_count);
	FUNC1(sbi, !sbi->total_valid_node_count);

	sbi->total_valid_node_count--;
	sbi->total_valid_block_count--;
	if (sbi->reserved_blocks &&
		sbi->current_reserved_blocks < sbi->reserved_blocks)
		sbi->current_reserved_blocks++;

	FUNC6(&sbi->stat_lock);

	if (is_inode) {
		FUNC0(inode);
	} else {
		if (FUNC7(inode->i_blocks == 0)) {
			FUNC3(sbi, "Inconsistent i_blocks, ino:%lu, iblocks:%llu",
				  inode->i_ino,
				  (unsigned long long)inode->i_blocks);
			FUNC4(sbi, SBI_NEED_FSCK);
			return;
		}
		FUNC2(inode, 1, false, true);
	}
}