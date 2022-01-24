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
struct ext4_sb_info {scalar_t__ s_desc_size; int /*<<< orphan*/  s_csum_seed; } ;
struct ext4_group_desc {int /*<<< orphan*/  bg_block_bitmap_csum_hi; int /*<<< orphan*/  bg_block_bitmap_csum_lo; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  ext4_group_t ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int __u32 ;

/* Variables and functions */
 scalar_t__ EXT4_BG_BLOCK_BITMAP_CSUM_HI_END ; 
 int FUNC0 (struct super_block*) ; 
 struct ext4_sb_info* FUNC1 (struct super_block*) ; 
 int FUNC2 (struct ext4_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct super_block *sb, ext4_group_t group,
				  struct ext4_group_desc *gdp,
				  struct buffer_head *bh)
{
	__u32 hi;
	__u32 provided, calculated;
	struct ext4_sb_info *sbi = FUNC1(sb);
	int sz = FUNC0(sb) / 8;

	if (!FUNC3(sb))
		return 1;

	provided = FUNC4(gdp->bg_block_bitmap_csum_lo);
	calculated = FUNC2(sbi, sbi->s_csum_seed, (__u8 *)bh->b_data, sz);
	if (sbi->s_desc_size >= EXT4_BG_BLOCK_BITMAP_CSUM_HI_END) {
		hi = FUNC4(gdp->bg_block_bitmap_csum_hi);
		provided |= (hi << 16);
	} else
		calculated &= 0xFFFF;

	if (provided == calculated)
		return 1;

	return 0;
}