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
struct ext4_super_block {int dummy; } ;
struct ext4_sb_info {struct ext4_super_block* s_es; } ;
struct ext4_new_group_data {unsigned long group; int mdata_blocks; void* free_clusters_count; int /*<<< orphan*/  blocks_count; } ;
struct ext4_new_flex_group_data {unsigned long count; int* bg_flags; struct ext4_new_group_data* groups; } ;
typedef  int ext4_grpblk_t ;
typedef  unsigned long ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EXT4_BG_BLOCK_UNINIT ; 
 int EXT4_BG_INODE_UNINIT ; 
 int EXT4_BG_INODE_ZEROED ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct ext4_sb_info*,int) ; 
 void* FUNC3 (struct super_block*) ; 
 struct ext4_sb_info* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  INIT_INODE_TABLE ; 
 scalar_t__ FUNC5 (struct ext4_super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,scalar_t__,unsigned long*,int*) ; 
 int FUNC7 (struct super_block*,unsigned long) ; 
 scalar_t__ FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct super_block *sb,
				    struct ext4_new_flex_group_data *flex_gd,
				    ext4_fsblk_t n_blocks_count,
				    unsigned long flexbg_size)
{
	struct ext4_sb_info *sbi = FUNC4(sb);
	struct ext4_super_block *es = sbi->s_es;
	struct ext4_new_group_data *group_data = flex_gd->groups;
	ext4_fsblk_t o_blocks_count;
	ext4_group_t n_group;
	ext4_group_t group;
	ext4_group_t last_group;
	ext4_grpblk_t last;
	ext4_grpblk_t clusters_per_group;
	unsigned long i;

	clusters_per_group = FUNC3(sb);

	o_blocks_count = FUNC5(es);

	if (o_blocks_count == n_blocks_count)
		return 0;

	FUNC6(sb, o_blocks_count, &group, &last);
	FUNC0(last);
	FUNC6(sb, n_blocks_count - 1, &n_group, &last);

	last_group = group | (flexbg_size - 1);
	if (last_group > n_group)
		last_group = n_group;

	flex_gd->count = last_group - group + 1;

	for (i = 0; i < flex_gd->count; i++) {
		int overhead;

		group_data[i].group = group + i;
		group_data[i].blocks_count = FUNC1(sb);
		overhead = FUNC7(sb, group + i);
		group_data[i].mdata_blocks = overhead;
		group_data[i].free_clusters_count = FUNC3(sb);
		if (FUNC8(sb)) {
			flex_gd->bg_flags[i] = EXT4_BG_BLOCK_UNINIT |
					       EXT4_BG_INODE_UNINIT;
			if (!FUNC9(sb, INIT_INODE_TABLE))
				flex_gd->bg_flags[i] |= EXT4_BG_INODE_ZEROED;
		} else
			flex_gd->bg_flags[i] = EXT4_BG_INODE_ZEROED;
	}

	if (last_group == n_group && FUNC8(sb))
		/* We need to initialize block bitmap of last group. */
		flex_gd->bg_flags[i - 1] &= ~EXT4_BG_BLOCK_UNINIT;

	if ((last_group == n_group) && (last != clusters_per_group - 1)) {
		group_data[i - 1].blocks_count = FUNC2(sbi, last + 1);
		group_data[i - 1].free_clusters_count -= clusters_per_group -
						       last - 1;
	}

	return 1;
}