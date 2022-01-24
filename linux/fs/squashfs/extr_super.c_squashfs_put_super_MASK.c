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
struct super_block {struct squashfs_sb_info* s_fs_info; } ;
struct squashfs_sb_info {struct squashfs_sb_info* xattr_id_table; struct squashfs_sb_info* inode_lookup_table; struct squashfs_sb_info* meta_index; struct squashfs_sb_info* fragment_index; struct squashfs_sb_info* id_table; int /*<<< orphan*/  read_page; int /*<<< orphan*/  fragment_cache; int /*<<< orphan*/  block_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct squashfs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct squashfs_sb_info*) ; 

__attribute__((used)) static void FUNC3(struct super_block *sb)
{
	if (sb->s_fs_info) {
		struct squashfs_sb_info *sbi = sb->s_fs_info;
		FUNC1(sbi->block_cache);
		FUNC1(sbi->fragment_cache);
		FUNC1(sbi->read_page);
		FUNC2(sbi);
		FUNC0(sbi->id_table);
		FUNC0(sbi->fragment_index);
		FUNC0(sbi->meta_index);
		FUNC0(sbi->inode_lookup_table);
		FUNC0(sbi->xattr_id_table);
		FUNC0(sb->s_fs_info);
		sb->s_fs_info = NULL;
	}
}