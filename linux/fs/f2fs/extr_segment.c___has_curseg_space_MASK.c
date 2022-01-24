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
struct f2fs_sb_info {scalar_t__ blocks_per_seg; } ;
struct curseg_info {scalar_t__ next_blkoff; } ;

/* Variables and functions */
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int) ; 

__attribute__((used)) static bool FUNC1(struct f2fs_sb_info *sbi, int type)
{
	struct curseg_info *curseg = FUNC0(sbi, type);
	if (curseg->next_blkoff < sbi->blocks_per_seg)
		return true;
	return false;
}