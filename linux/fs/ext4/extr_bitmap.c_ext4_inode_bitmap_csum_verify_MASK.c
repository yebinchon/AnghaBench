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
struct ext4_group_desc {int /*<<< orphan*/  bg_inode_bitmap_csum_hi; int /*<<< orphan*/  bg_inode_bitmap_csum_lo; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  ext4_group_t ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int __u32 ;

/* Variables and functions */
 scalar_t__ EXT4_BG_INODE_BITMAP_CSUM_HI_END ; 
 struct ext4_sb_info* FUNC0 (struct super_block*) ; 
 int FUNC1 (struct ext4_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct super_block *sb, ext4_group_t group,
				  struct ext4_group_desc *gdp,
				  struct buffer_head *bh, int sz)
{
	__u32 hi;
	__u32 provided, calculated;
	struct ext4_sb_info *sbi = FUNC0(sb);

	if (!FUNC2(sb))
		return 1;

	provided = FUNC3(gdp->bg_inode_bitmap_csum_lo);
	calculated = FUNC1(sbi, sbi->s_csum_seed, (__u8 *)bh->b_data, sz);
	if (sbi->s_desc_size >= EXT4_BG_INODE_BITMAP_CSUM_HI_END) {
		hi = FUNC3(gdp->bg_inode_bitmap_csum_hi);
		provided |= (hi << 16);
	} else
		calculated &= 0xFFFF;

	return provided == calculated;
}