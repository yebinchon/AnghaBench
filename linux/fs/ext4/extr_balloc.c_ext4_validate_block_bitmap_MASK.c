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
typedef  scalar_t__ ext4_fsblk_t ;

/* Variables and functions */
 int EFSBADCRC ; 
 int EFSCORRUPTED ; 
 int /*<<< orphan*/  EXT4_GROUP_INFO_BBITMAP_CORRUPT ; 
 scalar_t__ FUNC0 (struct ext4_group_info*) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ,struct ext4_group_desc*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,char*,int /*<<< orphan*/ ,...) ; 
 struct ext4_group_info* FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct super_block*,struct ext4_group_desc*,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct super_block *sb,
				      struct ext4_group_desc *desc,
				      ext4_group_t block_group,
				      struct buffer_head *bh)
{
	ext4_fsblk_t	blk;
	struct ext4_group_info *grp = FUNC4(sb, block_group);

	if (FUNC1(bh))
		return 0;
	if (FUNC0(grp))
		return -EFSCORRUPTED;

	FUNC5(sb, block_group);
	if (FUNC1(bh))
		goto verified;
	if (FUNC10(!FUNC2(sb, block_group,
			desc, bh))) {
		FUNC7(sb, block_group);
		FUNC3(sb, "bg %u: bad block bitmap checksum", block_group);
		FUNC6(sb, block_group,
					EXT4_GROUP_INFO_BBITMAP_CORRUPT);
		return -EFSBADCRC;
	}
	blk = FUNC8(sb, desc, block_group, bh);
	if (FUNC10(blk != 0)) {
		FUNC7(sb, block_group);
		FUNC3(sb, "bg %u: block %llu: invalid block bitmap",
			   block_group, blk);
		FUNC6(sb, block_group,
					EXT4_GROUP_INFO_BBITMAP_CORRUPT);
		return -EFSCORRUPTED;
	}
	FUNC9(bh);
verified:
	FUNC7(sb, block_group);
	return 0;
}