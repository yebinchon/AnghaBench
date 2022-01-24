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
struct ext4_group_desc {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;
typedef  int /*<<< orphan*/  ext4_group_t ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int EIO ; 
 int /*<<< orphan*/  EXT4_GROUP_INFO_BBITMAP_CORRUPT ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 struct ext4_group_desc* FUNC4 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct super_block*,struct ext4_group_desc*,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 

int FUNC8(struct super_block *sb, ext4_group_t block_group,
			   struct buffer_head *bh)
{
	struct ext4_group_desc *desc;

	if (!FUNC0(bh))
		return 0;
	desc = FUNC4(sb, block_group, NULL);
	if (!desc)
		return -EFSCORRUPTED;
	FUNC7(bh);
	if (!FUNC1(bh)) {
		FUNC3(sb, "Cannot read block bitmap - "
			   "block_group = %u, block_bitmap = %llu",
			   block_group, (unsigned long long) bh->b_blocknr);
		FUNC5(sb, block_group,
					EXT4_GROUP_INFO_BBITMAP_CORRUPT);
		return -EIO;
	}
	FUNC2(bh);
	/* Panic or remount fs read-only if block bitmap is invalid */
	return FUNC6(sb, desc, block_group, bh);
}