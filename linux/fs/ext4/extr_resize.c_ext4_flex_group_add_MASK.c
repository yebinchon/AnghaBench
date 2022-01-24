#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct ext4_super_block {int /*<<< orphan*/  s_reserved_gdt_blocks; } ;
struct ext4_sb_info {int s_groups_count; struct buffer_head** s_group_desc; TYPE_2__* s_sbh; struct ext4_super_block* s_es; } ;
struct ext4_new_flex_group_data {int count; TYPE_1__* groups; int /*<<< orphan*/  bg_flags; } ;
struct buffer_head {scalar_t__ b_blocknr; char* b_data; int b_size; } ;
typedef  scalar_t__ sector_t ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_grpblk_t ;
typedef  int ext4_group_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;
struct TYPE_5__ {scalar_t__ b_blocknr; } ;
struct TYPE_4__ {int group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_HT_RESIZE ; 
 struct ext4_sb_info* FUNC4 (struct super_block*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct super_block*,int,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ext4_super_block*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct super_block*) ; 
 int FUNC11 (struct super_block*) ; 
 int FUNC12 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC13 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct super_block*,struct ext4_new_flex_group_data*) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*,struct ext4_new_flex_group_data*) ; 
 unsigned int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (struct super_block*,struct ext4_new_flex_group_data*) ; 
 int /*<<< orphan*/  FUNC19 (struct super_block*,scalar_t__,char*,int,int) ; 

__attribute__((used)) static int FUNC20(struct super_block *sb,
			       struct inode *resize_inode,
			       struct ext4_new_flex_group_data *flex_gd)
{
	struct ext4_sb_info *sbi = FUNC4(sb);
	struct ext4_super_block *es = sbi->s_es;
	ext4_fsblk_t o_blocks_count;
	ext4_grpblk_t last;
	ext4_group_t group;
	handle_t *handle;
	unsigned reserved_gdb;
	int err = 0, err2 = 0, credit;

	FUNC1(!flex_gd->count || !flex_gd->groups || !flex_gd->bg_flags);

	reserved_gdb = FUNC17(es->s_reserved_gdt_blocks);
	o_blocks_count = FUNC8(es);
	FUNC9(sb, o_blocks_count, &group, &last);
	FUNC1(last);

	err = FUNC18(sb, flex_gd);
	if (err)
		goto exit;
	/*
	 * We will always be modifying at least the superblock and  GDT
	 * blocks.  If we are adding a group past the last current GDT block,
	 * we will also modify the inode and the dindirect block.  If we
	 * are adding a group with superblock/GDT backups  we will also
	 * modify each of the reserved GDT dindirect blocks.
	 */
	credit = 3;	/* sb, resize inode, resize inode dindirect */
	/* GDT blocks */
	credit += 1 + FUNC2(flex_gd->count, FUNC3(sb));
	credit += reserved_gdb;	/* Reserved GDT dindirect blocks */
	handle = FUNC13(sb, EXT4_HT_RESIZE, credit);
	if (FUNC5(handle)) {
		err = FUNC6(handle);
		goto exit;
	}

	FUNC0(sbi->s_sbh, "get_write_access");
	err = FUNC12(handle, sbi->s_sbh);
	if (err)
		goto exit_journal;

	group = flex_gd->groups[0].group;
	FUNC1(group != sbi->s_groups_count);
	err = FUNC7(handle, sb, group,
				resize_inode, flex_gd->count);
	if (err)
		goto exit_journal;

	err = FUNC15(handle, sb, flex_gd);
	if (err)
		goto exit_journal;

	FUNC16(sb, flex_gd);

	err = FUNC10(handle, sb);

exit_journal:
	err2 = FUNC14(handle);
	if (!err)
		err = err2;

	if (!err) {
		int gdb_num = group / FUNC3(sb);
		int gdb_num_end = ((group + flex_gd->count - 1) /
				   FUNC3(sb));
		int meta_bg = FUNC11(sb);
		sector_t old_gdb = 0;

		FUNC19(sb, sbi->s_sbh->b_blocknr, (char *)es,
			       sizeof(struct ext4_super_block), 0);
		for (; gdb_num <= gdb_num_end; gdb_num++) {
			struct buffer_head *gdb_bh;

			gdb_bh = sbi->s_group_desc[gdb_num];
			if (old_gdb == gdb_bh->b_blocknr)
				continue;
			FUNC19(sb, gdb_bh->b_blocknr, gdb_bh->b_data,
				       gdb_bh->b_size, meta_bg);
			old_gdb = gdb_bh->b_blocknr;
		}
	}
exit:
	return err;
}