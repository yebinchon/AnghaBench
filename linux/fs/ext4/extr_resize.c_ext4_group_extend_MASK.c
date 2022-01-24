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
struct super_block {int s_blocksize_bits; } ;
struct ext4_super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ sector_t ;
typedef  scalar_t__ ext4_grpblk_t ;
typedef  int /*<<< orphan*/  ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG ; 
 int EINVAL ; 
 int ENOSPC ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct ext4_super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,scalar_t__,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC4 (struct super_block*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,char*,...) ; 
 struct buffer_head* FUNC7 (struct super_block*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct super_block*,int /*<<< orphan*/ ) ; 

int FUNC9(struct super_block *sb, struct ext4_super_block *es,
		      ext4_fsblk_t n_blocks_count)
{
	ext4_fsblk_t o_blocks_count;
	ext4_grpblk_t last;
	ext4_grpblk_t add;
	struct buffer_head *bh;
	int err;
	ext4_group_t group;

	o_blocks_count = FUNC2(es);

	if (FUNC8(sb, DEBUG))
		FUNC5(sb, KERN_DEBUG,
			 "extending last group from %llu to %llu blocks",
			 o_blocks_count, n_blocks_count);

	if (n_blocks_count == 0 || n_blocks_count == o_blocks_count)
		return 0;

	if (n_blocks_count > (sector_t)(~0ULL) >> (sb->s_blocksize_bits - 9)) {
		FUNC5(sb, KERN_ERR,
			 "filesystem too large to resize to %llu blocks safely",
			 n_blocks_count);
		return -EINVAL;
	}

	if (n_blocks_count < o_blocks_count) {
		FUNC6(sb, "can't shrink FS - resize aborted");
		return -EINVAL;
	}

	/* Handle the remaining blocks in the last group only. */
	FUNC3(sb, o_blocks_count, &group, &last);

	if (last == 0) {
		FUNC6(sb, "need to use ext2online to resize further");
		return -EPERM;
	}

	add = FUNC0(sb) - last;

	if (o_blocks_count + add < o_blocks_count) {
		FUNC6(sb, "blocks_count overflow");
		return -EINVAL;
	}

	if (o_blocks_count + add > n_blocks_count)
		add = n_blocks_count - o_blocks_count;

	if (o_blocks_count + add < n_blocks_count)
		FUNC6(sb, "will only finish group (%llu blocks, %u new)",
			     o_blocks_count + add, add);

	/* See if the device is actually as big as what was requested */
	bh = FUNC7(sb, o_blocks_count + add - 1);
	if (!bh) {
		FUNC6(sb, "can't read last block, resize aborted");
		return -ENOSPC;
	}
	FUNC1(bh);

	err = FUNC4(sb, o_blocks_count, add);
	return err;
}