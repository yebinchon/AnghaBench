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
struct f2fs_sb_info {scalar_t__ total_valid_block_count; scalar_t__ reserved_blocks; scalar_t__ current_reserved_blocks; int /*<<< orphan*/  stat_lock; } ;
typedef  scalar_t__ block_t ;
typedef  scalar_t__ blkcnt_t ;

/* Variables and functions */
 scalar_t__ F2FS_LOG_SECTORS_PER_BLOCK ; 
 int /*<<< orphan*/  SBI_NEED_FSCK ; 
 int /*<<< orphan*/  FUNC0 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,char*,int /*<<< orphan*/ ,unsigned long long,unsigned long long) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static inline void FUNC8(struct f2fs_sb_info *sbi,
						struct inode *inode,
						block_t count)
{
	blkcnt_t sectors = count << F2FS_LOG_SECTORS_PER_BLOCK;

	FUNC5(&sbi->stat_lock);
	FUNC0(sbi, sbi->total_valid_block_count < (block_t) count);
	sbi->total_valid_block_count -= (block_t)count;
	if (sbi->reserved_blocks &&
		sbi->current_reserved_blocks < sbi->reserved_blocks)
		sbi->current_reserved_blocks = FUNC3(sbi->reserved_blocks,
					sbi->current_reserved_blocks + count);
	FUNC6(&sbi->stat_lock);
	if (FUNC7(inode->i_blocks < sectors)) {
		FUNC2(sbi, "Inconsistent i_blocks, ino:%lu, iblocks:%llu, sectors:%llu",
			  inode->i_ino,
			  (unsigned long long)inode->i_blocks,
			  (unsigned long long)sectors);
		FUNC4(sbi, SBI_NEED_FSCK);
		return;
	}
	FUNC1(inode, count, false, true);
}