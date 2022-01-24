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
struct f2fs_sb_info {unsigned int total_valid_block_count; unsigned int current_reserved_blocks; unsigned int user_block_count; int total_valid_node_count; unsigned int total_node_count; int /*<<< orphan*/  alloc_valid_block_count; int /*<<< orphan*/  stat_lock; scalar_t__ unusable_block_count; } ;
typedef  unsigned int block_t ;
struct TYPE_2__ {scalar_t__ root_reserved_blocks; } ;

/* Variables and functions */
 int ENOSPC ; 
 TYPE_1__ FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FAULT_BLOCK ; 
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,struct inode*,int) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int) ; 
 int FUNC5 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static inline int FUNC15(struct f2fs_sb_info *sbi,
					struct inode *inode, bool is_inode)
{
	block_t	valid_block_count;
	unsigned int valid_node_count, user_block_count;
	int err;

	if (is_inode) {
		if (inode) {
			err = FUNC2(inode);
			if (err)
				return err;
		}
	} else {
		err = FUNC5(inode, 1);
		if (err)
			return err;
	}

	if (FUNC13(sbi, FAULT_BLOCK)) {
		FUNC8(FAULT_BLOCK);
		goto enospc;
	}

	FUNC11(&sbi->stat_lock);

	valid_block_count = sbi->total_valid_block_count +
					sbi->current_reserved_blocks + 1;

	if (!FUNC1(sbi, inode, false))
		valid_block_count += FUNC0(sbi).root_reserved_blocks;
	user_block_count = sbi->user_block_count;
	if (FUNC14(FUNC9(sbi, SBI_CP_DISABLED)))
		user_block_count -= sbi->unusable_block_count;

	if (FUNC14(valid_block_count > user_block_count)) {
		FUNC12(&sbi->stat_lock);
		goto enospc;
	}

	valid_node_count = sbi->total_valid_node_count + 1;
	if (FUNC14(valid_node_count > sbi->total_node_count)) {
		FUNC12(&sbi->stat_lock);
		goto enospc;
	}

	sbi->total_valid_node_count++;
	sbi->total_valid_block_count++;
	FUNC12(&sbi->stat_lock);

	if (inode) {
		if (is_inode)
			FUNC7(inode, true);
		else
			FUNC6(inode, 1, true, true);
	}

	FUNC10(&sbi->alloc_valid_block_count);
	return 0;

enospc:
	if (is_inode) {
		if (inode)
			FUNC3(inode);
	} else {
		FUNC4(inode, 1);
	}
	return -ENOSPC;
}