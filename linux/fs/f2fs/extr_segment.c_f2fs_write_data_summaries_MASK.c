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
struct f2fs_sb_info {int dummy; } ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  CP_COMPACT_SUM_FLAG ; 
 int /*<<< orphan*/  CURSEG_HOT_DATA ; 
 scalar_t__ FUNC0 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct f2fs_sb_info *sbi, block_t start_blk)
{
	if (FUNC0(sbi, CP_COMPACT_SUM_FLAG))
		FUNC1(sbi, start_blk);
	else
		FUNC2(sbi, start_blk, CURSEG_HOT_DATA);
}