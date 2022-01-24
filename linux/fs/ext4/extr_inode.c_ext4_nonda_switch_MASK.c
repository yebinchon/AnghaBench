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
struct super_block {int dummy; } ;
struct ext4_sb_info {int /*<<< orphan*/  s_dirtyclusters_counter; int /*<<< orphan*/  s_freeclusters_counter; } ;
typedef  int s64 ;

/* Variables and functions */
 int EXT4_FREECLUSTERS_WATERMARK ; 
 struct ext4_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  WB_REASON_FS_FREE_SPACE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct super_block *sb)
{
	s64 free_clusters, dirty_clusters;
	struct ext4_sb_info *sbi = FUNC0(sb);

	/*
	 * switch to non delalloc mode if we are running low
	 * on free block. The free block accounting via percpu
	 * counters can get slightly wrong with percpu_counter_batch getting
	 * accumulated on each CPU without updating global counters
	 * Delalloc need an accurate free block accounting. So switch
	 * to non delalloc when we are near to error range.
	 */
	free_clusters =
		FUNC1(&sbi->s_freeclusters_counter);
	dirty_clusters =
		FUNC1(&sbi->s_dirtyclusters_counter);
	/*
	 * Start pushing delalloc when 1/2 of free blocks are dirty.
	 */
	if (dirty_clusters && (free_clusters < 2 * dirty_clusters))
		FUNC2(sb, WB_REASON_FS_FREE_SPACE);

	if (2 * free_clusters < 3 * dirty_clusters ||
	    free_clusters < (dirty_clusters + EXT4_FREECLUSTERS_WATERMARK)) {
		/*
		 * free block count is less than 150% of dirty blocks
		 * or free blocks is less than watermark
		 */
		return 1;
	}
	return 0;
}