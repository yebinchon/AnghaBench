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
struct inode {int dummy; } ;
struct ext4_super_block {int /*<<< orphan*/  s_reserved_gdt_blocks; int /*<<< orphan*/  s_inodes_count; } ;
struct ext4_sb_info {struct ext4_super_block* s_es; } ;
struct ext4_new_group_data {int group; scalar_t__ blocks_count; } ;
struct ext4_new_flex_group_data {int count; int /*<<< orphan*/ * bg_flags; struct ext4_new_group_data* groups; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_IGET_SPECIAL ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_RESIZE_INO ; 
 struct ext4_sb_info* FUNC2 (struct super_block*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int FUNC5 (struct super_block*,int) ; 
 scalar_t__ FUNC6 (struct super_block*,int) ; 
 scalar_t__ FUNC7 (struct ext4_super_block*) ; 
 int FUNC8 (struct super_block*,struct inode*,struct ext4_new_flex_group_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*) ; 
 struct inode* FUNC11 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct super_block*,struct ext4_new_group_data*) ; 

int FUNC18(struct super_block *sb, struct ext4_new_group_data *input)
{
	struct ext4_new_flex_group_data flex_gd;
	struct ext4_sb_info *sbi = FUNC2(sb);
	struct ext4_super_block *es = sbi->s_es;
	int reserved_gdb = FUNC6(sb, input->group) ?
		FUNC15(es->s_reserved_gdt_blocks) : 0;
	struct inode *inode = NULL;
	int gdb_off;
	int err;
	__u16 bg_flags = 0;

	gdb_off = input->group % FUNC0(sb);

	if (gdb_off == 0 && !FUNC10(sb)) {
		FUNC13(sb, "Can't resize non-sparse filesystem further");
		return -EPERM;
	}

	if (FUNC7(es) + input->blocks_count <
	    FUNC7(es)) {
		FUNC13(sb, "blocks_count overflow");
		return -EINVAL;
	}

	if (FUNC16(es->s_inodes_count) + FUNC1(sb) <
	    FUNC16(es->s_inodes_count)) {
		FUNC13(sb, "inodes_count overflow");
		return -EINVAL;
	}

	if (reserved_gdb || gdb_off == 0) {
		if (!FUNC9(sb) ||
		    !FUNC15(es->s_reserved_gdt_blocks)) {
			FUNC13(sb,
				     "No reserved GDT blocks, can't resize");
			return -EPERM;
		}
		inode = FUNC11(sb, EXT4_RESIZE_INO, EXT4_IGET_SPECIAL);
		if (FUNC3(inode)) {
			FUNC13(sb, "Error opening resize inode");
			return FUNC4(inode);
		}
	}


	err = FUNC17(sb, input);
	if (err)
		goto out;

	err = FUNC5(sb, input->group + 1);
	if (err)
		goto out;

	err = FUNC12(sb, input->group + 1);
	if (err)
		goto out;

	flex_gd.count = 1;
	flex_gd.groups = input;
	flex_gd.bg_flags = &bg_flags;
	err = FUNC8(sb, inode, &flex_gd);
out:
	FUNC14(inode);
	return err;
}