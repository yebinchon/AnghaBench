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
struct ext4_super_block {int /*<<< orphan*/  s_reserved_gdt_blocks; } ;
struct ext4_sb_info {int s_itb_per_group; scalar_t__ s_groups_count; TYPE_1__** s_group_desc; struct ext4_super_block* s_es; } ;
struct ext4_new_group_data {scalar_t__ group; scalar_t__ inode_table; scalar_t__ block_bitmap; scalar_t__ blocks_count; scalar_t__ inode_bitmap; } ;
struct ext4_new_flex_group_data {int* bg_flags; int count; struct ext4_new_group_data* groups; } ;
struct buffer_head {int /*<<< orphan*/  b_data; int /*<<< orphan*/  b_size; } ;
typedef  struct buffer_head handle_t ;
typedef  scalar_t__ ext4_grpblk_t ;
typedef  scalar_t__ ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;
typedef  int __u16 ;
struct TYPE_2__ {int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (struct ext4_sb_info*,scalar_t__) ; 
 int EXT4_BG_BLOCK_UNINIT ; 
 int EXT4_BG_INODE_UNINIT ; 
 int EXT4_BG_INODE_ZEROED ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_HT_RESIZE ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_MAX_TRANS_DATA ; 
 int /*<<< orphan*/  FUNC5 (struct ext4_sb_info*,scalar_t__) ; 
 struct ext4_sb_info* FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int GROUP_TABLE_COUNT ; 
 scalar_t__ FUNC7 (struct buffer_head*) ; 
 int FUNC8 (struct buffer_head*) ; 
 struct buffer_head* FUNC9 (struct buffer_head*,struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 scalar_t__ FUNC11 (struct super_block*,scalar_t__) ; 
 unsigned long FUNC12 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*,scalar_t__,...) ; 
 scalar_t__ FUNC14 (struct super_block*,scalar_t__) ; 
 scalar_t__ FUNC15 (struct super_block*,scalar_t__) ; 
 int FUNC16 (struct buffer_head*,int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC17 (struct super_block*) ; 
 int FUNC18 (struct buffer_head*,struct buffer_head*) ; 
 struct buffer_head* FUNC19 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct buffer_head*,int) ; 
 int FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC27 (struct super_block*,scalar_t__) ; 
 int FUNC28 (struct super_block*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct buffer_head*) ; 
 int FUNC30 (struct super_block*,struct buffer_head*,struct ext4_new_flex_group_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (int) ; 

__attribute__((used)) static int FUNC32(struct super_block *sb,
				struct ext4_new_flex_group_data *flex_gd)
{
	int group_table_count[] = {1, 1, FUNC6(sb)->s_itb_per_group};
	ext4_fsblk_t start;
	ext4_fsblk_t block;
	struct ext4_sb_info *sbi = FUNC6(sb);
	struct ext4_super_block *es = sbi->s_es;
	struct ext4_new_group_data *group_data = flex_gd->groups;
	__u16 *bg_flags = flex_gd->bg_flags;
	handle_t *handle;
	ext4_group_t group, count;
	struct buffer_head *bh = NULL;
	int reserved_gdb, i, j, err = 0, err2;
	int meta_bg;

	FUNC1(!flex_gd->count || !group_data ||
	       group_data[0].group != sbi->s_groups_count);

	reserved_gdb = FUNC25(es->s_reserved_gdt_blocks);
	meta_bg = FUNC17(sb);

	/* This transaction may be extended/restarted along the way */
	handle = FUNC19(sb, EXT4_HT_RESIZE, EXT4_MAX_TRANS_DATA);
	if (FUNC7(handle))
		return FUNC8(handle);

	group = group_data[0].group;
	for (i = 0; i < flex_gd->count; i++, group++) {
		unsigned long gdblocks;
		ext4_grpblk_t overhead;

		gdblocks = FUNC12(sb, group);
		start = FUNC14(sb, group);

		if (meta_bg == 0 && !FUNC11(sb, group))
			goto handle_itb;

		if (meta_bg == 1) {
			ext4_group_t first_group;
			first_group = FUNC22(sb, group);
			if (first_group != group + 1 &&
			    first_group != group + FUNC3(sb) - 1)
				goto handle_itb;
		}

		block = start + FUNC11(sb, group);
		/* Copy all of the GDT blocks into the backup in this group */
		for (j = 0; j < gdblocks; j++, block++) {
			struct buffer_head *gdb;

			FUNC13("update backup group %#04llx\n", block);
			err = FUNC24(handle, 1);
			if (err)
				goto out;

			gdb = FUNC27(sb, block);
			if (FUNC31(!gdb)) {
				err = -ENOMEM;
				goto out;
			}

			FUNC0(gdb, "get_write_access");
			err = FUNC18(handle, gdb);
			if (err) {
				FUNC10(gdb);
				goto out;
			}
			FUNC26(gdb->b_data, sbi->s_group_desc[j]->b_data,
			       gdb->b_size);
			FUNC29(gdb);

			err = FUNC16(handle, NULL, gdb);
			if (FUNC31(err)) {
				FUNC10(gdb);
				goto out;
			}
			FUNC10(gdb);
		}

		/* Zero out all of the reserved backup group descriptor
		 * table blocks
		 */
		if (FUNC11(sb, group)) {
			err = FUNC28(sb, gdblocks + start + 1,
					reserved_gdb, GFP_NOFS);
			if (err)
				goto out;
		}

handle_itb:
		/* Initialize group tables of the grop @group */
		if (!(bg_flags[i] & EXT4_BG_INODE_ZEROED))
			goto handle_bb;

		/* Zero out all of the inode table blocks */
		block = group_data[i].inode_table;
		FUNC13("clear inode table blocks %#04llx -> %#04lx\n",
			   block, sbi->s_itb_per_group);
		err = FUNC28(sb, block, sbi->s_itb_per_group,
				       GFP_NOFS);
		if (err)
			goto out;

handle_bb:
		if (bg_flags[i] & EXT4_BG_BLOCK_UNINIT)
			goto handle_ib;

		/* Initialize block bitmap of the @group */
		block = group_data[i].block_bitmap;
		err = FUNC24(handle, 1);
		if (err)
			goto out;

		bh = FUNC9(handle, sb, block);
		if (FUNC7(bh)) {
			err = FUNC8(bh);
			goto out;
		}
		overhead = FUNC15(sb, group);
		if (overhead != 0) {
			FUNC13("mark backup superblock %#04llx (+0)\n",
				   start);
			FUNC23(bh->b_data, 0,
				      FUNC5(sbi, overhead));
		}
		FUNC21(FUNC2(sbi, group_data[i].blocks_count),
				     sb->s_blocksize * 8, bh->b_data);
		err = FUNC16(handle, NULL, bh);
		FUNC10(bh);
		if (err)
			goto out;

handle_ib:
		if (bg_flags[i] & EXT4_BG_INODE_UNINIT)
			continue;

		/* Initialize inode bitmap of the @group */
		block = group_data[i].inode_bitmap;
		err = FUNC24(handle, 1);
		if (err)
			goto out;
		/* Mark unused entries in inode bitmap used */
		bh = FUNC9(handle, sb, block);
		if (FUNC7(bh)) {
			err = FUNC8(bh);
			goto out;
		}

		FUNC21(FUNC4(sb),
				     sb->s_blocksize * 8, bh->b_data);
		err = FUNC16(handle, NULL, bh);
		FUNC10(bh);
		if (err)
			goto out;
	}

	/* Mark group tables in block bitmap */
	for (j = 0; j < GROUP_TABLE_COUNT; j++) {
		count = group_table_count[j];
		start = (&group_data[0].block_bitmap)[j];
		block = start;
		for (i = 1; i < flex_gd->count; i++) {
			block += group_table_count[j];
			if (block == (&group_data[i].block_bitmap)[j]) {
				count += group_table_count[j];
				continue;
			}
			err = FUNC30(sb, handle,
						      flex_gd,
						      FUNC2(sbi, start),
						      FUNC2(sbi,
							       start + count
							       - 1));
			if (err)
				goto out;
			count = group_table_count[j];
			start = (&group_data[i].block_bitmap)[j];
			block = start;
		}

		if (count) {
			err = FUNC30(sb, handle,
						      flex_gd,
						      FUNC2(sbi, start),
						      FUNC2(sbi,
							       start + count
							       - 1));
			if (err)
				goto out;
		}
	}

out:
	err2 = FUNC20(handle);
	if (err2 && !err)
		err = err2;

	return err;
}