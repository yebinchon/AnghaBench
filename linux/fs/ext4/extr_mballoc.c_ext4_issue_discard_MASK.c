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
struct super_block {int s_blocksize_bits; int /*<<< orphan*/  s_bdev; } ;
struct bio {int dummy; } ;
typedef  int sector_t ;
typedef  int ext4_grpblk_t ;
typedef  int /*<<< orphan*/  ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bio**) ; 
 scalar_t__ FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct super_block*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,unsigned long long,int) ; 

__attribute__((used)) static inline int FUNC6(struct super_block *sb,
		ext4_group_t block_group, ext4_grpblk_t cluster, int count,
		struct bio **biop)
{
	ext4_fsblk_t discard_block;

	discard_block = (FUNC0(FUNC1(sb), cluster) +
			 FUNC3(sb, block_group));
	count = FUNC0(FUNC1(sb), count);
	FUNC5(sb,
			(unsigned long long) discard_block, count);
	if (biop) {
		return FUNC2(sb->s_bdev,
			(sector_t)discard_block << (sb->s_blocksize_bits - 9),
			(sector_t)count << (sb->s_blocksize_bits - 9),
			GFP_NOFS, 0, biop);
	} else
		return FUNC4(sb, discard_block, count, GFP_NOFS, 0);
}