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
struct f2fs_sb_info {int s_ndevs; } ;
typedef  scalar_t__ block_t ;
struct TYPE_2__ {scalar_t__ start_blk; scalar_t__ end_blk; } ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*) ; 

int FUNC2(struct f2fs_sb_info *sbi, block_t blkaddr)
{
	int i;

	if (!FUNC1(sbi))
		return 0;

	for (i = 0; i < sbi->s_ndevs; i++)
		if (FUNC0(i).start_blk <= blkaddr && FUNC0(i).end_blk >= blkaddr)
			return i;
	return 0;
}