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
struct ext4_group_desc {void* bg_inode_bitmap_csum_hi; void* bg_inode_bitmap_csum_lo; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  ext4_group_t ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int __u32 ;

/* Variables and functions */
 scalar_t__ EXT4_BG_INODE_BITMAP_CSUM_HI_END ; 
 struct ext4_sb_info* FUNC0 (struct super_block*) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (struct ext4_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 

void FUNC4(struct super_block *sb, ext4_group_t group,
				struct ext4_group_desc *gdp,
				struct buffer_head *bh, int sz)
{
	__u32 csum;
	struct ext4_sb_info *sbi = FUNC0(sb);

	if (!FUNC3(sb))
		return;

	csum = FUNC2(sbi, sbi->s_csum_seed, (__u8 *)bh->b_data, sz);
	gdp->bg_inode_bitmap_csum_lo = FUNC1(csum & 0xFFFF);
	if (sbi->s_desc_size >= EXT4_BG_INODE_BITMAP_CSUM_HI_END)
		gdp->bg_inode_bitmap_csum_hi = FUNC1(csum >> 16);
}