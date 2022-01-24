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
struct f2fs_super_block {int /*<<< orphan*/  block_count; void* segment_count_main; void* segment_count; void* section_count; } ;
struct f2fs_sb_info {int segs_per_sec; long long blocks_per_seg; } ;

/* Variables and functions */
 struct f2fs_super_block* FUNC0 (struct f2fs_sb_info*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (long long) ; 
 int FUNC3 (void*) ; 
 long long FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct f2fs_sb_info *sbi, int secs)
{
	struct f2fs_super_block *raw_sb = FUNC0(sbi);
	int section_count = FUNC3(raw_sb->section_count);
	int segment_count = FUNC3(raw_sb->segment_count);
	int segment_count_main = FUNC3(raw_sb->segment_count_main);
	long long block_count = FUNC4(raw_sb->block_count);
	int segs = secs * sbi->segs_per_sec;

	raw_sb->section_count = FUNC1(section_count + secs);
	raw_sb->segment_count = FUNC1(segment_count + segs);
	raw_sb->segment_count_main = FUNC1(segment_count_main + segs);
	raw_sb->block_count = FUNC2(block_count +
					(long long)segs * sbi->blocks_per_seg);
}