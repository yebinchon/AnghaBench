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
struct f2fs_sb_info {scalar_t__ user_block_count; } ;
typedef  scalar_t__ block_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC1 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC2 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC3 (struct f2fs_sb_info*) ; 

__attribute__((used)) static inline bool FUNC4(struct f2fs_sb_info *sbi)
{
	block_t invalid_user_blocks = sbi->user_block_count -
					FUNC3(sbi);
	/*
	 * Background GC is triggered with the following conditions.
	 * 1. There are a number of invalid blocks.
	 * 2. There is not enough free space.
	 */
	if (invalid_user_blocks > FUNC2(sbi) &&
			FUNC0(sbi) < FUNC1(sbi))
		return true;
	return false;
}