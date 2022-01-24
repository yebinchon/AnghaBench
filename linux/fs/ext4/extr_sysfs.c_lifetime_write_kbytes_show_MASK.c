#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {TYPE_2__* s_bdev; } ;
struct ext4_sb_info {scalar_t__ s_kbytes_written; TYPE_1__* s_buddy_cache; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_6__ {int s_sectors_written_start; } ;
struct TYPE_5__ {int /*<<< orphan*/  bd_part; } ;
struct TYPE_4__ {struct super_block* i_sb; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 size_t STAT_WRITE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * sectors ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static ssize_t FUNC3(struct ext4_sb_info *sbi, char *buf)
{
	struct super_block *sb = sbi->s_buddy_cache->i_sb;

	if (!sb->s_bdev->bd_part)
		return FUNC2(buf, PAGE_SIZE, "0\n");
	return FUNC2(buf, PAGE_SIZE, "%llu\n",
			(unsigned long long)(sbi->s_kbytes_written +
			((FUNC1(sb->s_bdev->bd_part,
					 sectors[STAT_WRITE]) -
			  FUNC0(sb)->s_sectors_written_start) >> 1)));
}