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
struct super_block {int s_blocksize; } ;
struct ext4_sb_info {int s_desc_per_block; TYPE_1__* s_es; } ;
typedef  int ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_first_data_block; int /*<<< orphan*/  s_first_meta_bg; } ;

/* Variables and functions */
 struct ext4_sb_info* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (struct super_block*,int) ; 
 scalar_t__ FUNC2 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ext4_fsblk_t FUNC5(struct super_block *sb,
				   ext4_fsblk_t logical_sb_block, int nr)
{
	struct ext4_sb_info *sbi = FUNC0(sb);
	ext4_group_t bg, first_meta_bg;
	int has_super = 0;

	first_meta_bg = FUNC4(sbi->s_es->s_first_meta_bg);

	if (!FUNC3(sb) || nr < first_meta_bg)
		return logical_sb_block + nr + 1;
	bg = sbi->s_desc_per_block * nr;
	if (FUNC1(sb, bg))
		has_super = 1;

	/*
	 * If we have a meta_bg fs with 1k blocks, group 0's GDT is at
	 * block 2, not 1.  If s_first_data_block == 0 (bigalloc is enabled
	 * on modern mke2fs or blksize > 1k on older mke2fs) then we must
	 * compensate.
	 */
	if (sb->s_blocksize == 1024 && nr == 0 &&
	    FUNC4(sbi->s_es->s_first_data_block) == 0)
		has_super++;

	return (has_super + FUNC2(sb, bg));
}