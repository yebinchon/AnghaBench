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
struct ext4_super_block {int /*<<< orphan*/  s_reserved_gdt_blocks; } ;
struct ext4_sb_info {struct buffer_head** s_group_desc; struct ext4_super_block* s_es; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_group_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int FUNC1 (struct super_block*) ; 
 struct ext4_sb_info* FUNC2 (struct super_block*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*,int) ; 
 int FUNC4 (struct super_block*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (struct super_block*,int) ; 
 scalar_t__ FUNC6 (struct super_block*,int) ; 
 int FUNC7 (struct super_block*) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct inode*,int) ; 

__attribute__((used)) static int FUNC11(handle_t *handle, struct super_block *sb,
			      ext4_group_t group, struct inode *resize_inode,
			      ext4_group_t count)
{
	struct ext4_sb_info *sbi = FUNC2(sb);
	struct ext4_super_block *es = sbi->s_es;
	struct buffer_head *gdb_bh;
	int i, gdb_off, gdb_num, err = 0;
	int meta_bg;

	meta_bg = FUNC7(sb);
	for (i = 0; i < count; i++, group++) {
		int reserved_gdb = FUNC5(sb, group) ?
			FUNC9(es->s_reserved_gdt_blocks) : 0;

		gdb_off = group % FUNC1(sb);
		gdb_num = group / FUNC1(sb);

		/*
		 * We will only either add reserved group blocks to a backup group
		 * or remove reserved blocks for the first group in a new group block.
		 * Doing both would be mean more complex code, and sane people don't
		 * use non-sparse filesystems anymore.  This is already checked above.
		 */
		if (gdb_off) {
			gdb_bh = sbi->s_group_desc[gdb_num];
			FUNC0(gdb_bh, "get_write_access");
			err = FUNC8(handle, gdb_bh);

			if (!err && reserved_gdb && FUNC6(sb, group))
				err = FUNC10(handle, resize_inode, group);
		} else if (meta_bg != 0) {
			err = FUNC4(sb, handle, group);
		} else {
			err = FUNC3(handle, resize_inode, group);
		}
		if (err)
			break;
	}
	return err;
}