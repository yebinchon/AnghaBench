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
struct ext4_group_info {int dummy; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  ext4_group_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;

/* Variables and functions */
 int EFSBADCRC ; 
 int EFSCORRUPTED ; 
 int /*<<< orphan*/  EXT4_GROUP_INFO_IBITMAP_CORRUPT ; 
 int FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (struct ext4_group_info*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ext4_group_info* FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int /*<<< orphan*/ ,struct ext4_group_desc*,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC11(struct super_block *sb,
				      struct ext4_group_desc *desc,
				      ext4_group_t block_group,
				      struct buffer_head *bh)
{
	ext4_fsblk_t	blk;
	struct ext4_group_info *grp = FUNC4(sb, block_group);

	if (FUNC2(bh))
		return 0;
	if (FUNC1(grp))
		return -EFSCORRUPTED;

	FUNC7(sb, block_group);
	if (FUNC2(bh))
		goto verified;
	blk = FUNC5(sb, desc);
	if (!FUNC6(sb, block_group, desc, bh,
					   FUNC0(sb) / 8)) {
		FUNC9(sb, block_group);
		FUNC3(sb, "Corrupt inode bitmap - block_group = %u, "
			   "inode_bitmap = %llu", block_group, blk);
		FUNC8(sb, block_group,
					EXT4_GROUP_INFO_IBITMAP_CORRUPT);
		return -EFSBADCRC;
	}
	FUNC10(bh);
verified:
	FUNC9(sb, block_group);
	return 0;
}