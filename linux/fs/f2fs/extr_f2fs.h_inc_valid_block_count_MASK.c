#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct f2fs_sb_info {scalar_t__ total_valid_block_count; scalar_t__ user_block_count; scalar_t__ current_reserved_blocks; scalar_t__ unusable_block_count; int /*<<< orphan*/  alloc_valid_block_count; int /*<<< orphan*/  stat_lock; } ;
typedef  scalar_t__ block_t ;
typedef  scalar_t__ blkcnt_t ;
struct TYPE_2__ {scalar_t__ root_reserved_blocks; } ;

/* Variables and functions */
 int ENOSPC ; 
 TYPE_1__ FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FAULT_BLOCK ; 
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,scalar_t__) ; 
 int FUNC3 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 

__attribute__((used)) static inline int FUNC13(struct f2fs_sb_info *sbi,
				 struct inode *inode, blkcnt_t *count)
{
	blkcnt_t diff = 0, release = 0;
	block_t avail_user_block_count;
	int ret;

	ret = FUNC3(inode, *count);
	if (ret)
		return ret;

	if (FUNC11(sbi, FAULT_BLOCK)) {
		FUNC5(FAULT_BLOCK);
		release = *count;
		goto release_quota;
	}

	/*
	 * let's increase this in prior to actual block count change in order
	 * for f2fs_sync_file to avoid data races when deciding checkpoint.
	 */
	FUNC7(&sbi->alloc_valid_block_count, (*count));

	FUNC9(&sbi->stat_lock);
	sbi->total_valid_block_count += (block_t)(*count);
	avail_user_block_count = sbi->user_block_count -
					sbi->current_reserved_blocks;

	if (!FUNC1(sbi, inode, true))
		avail_user_block_count -= FUNC0(sbi).root_reserved_blocks;
	if (FUNC12(FUNC6(sbi, SBI_CP_DISABLED))) {
		if (avail_user_block_count > sbi->unusable_block_count)
			avail_user_block_count -= sbi->unusable_block_count;
		else
			avail_user_block_count = 0;
	}
	if (FUNC12(sbi->total_valid_block_count > avail_user_block_count)) {
		diff = sbi->total_valid_block_count - avail_user_block_count;
		if (diff > *count)
			diff = *count;
		*count -= diff;
		release = diff;
		sbi->total_valid_block_count -= diff;
		if (!*count) {
			FUNC10(&sbi->stat_lock);
			goto enospc;
		}
	}
	FUNC10(&sbi->stat_lock);

	if (FUNC12(release)) {
		FUNC8(&sbi->alloc_valid_block_count, release);
		FUNC2(inode, release);
	}
	FUNC4(inode, *count, true, true);
	return 0;

enospc:
	FUNC8(&sbi->alloc_valid_block_count, release);
release_quota:
	FUNC2(inode, release);
	return -ENOSPC;
}