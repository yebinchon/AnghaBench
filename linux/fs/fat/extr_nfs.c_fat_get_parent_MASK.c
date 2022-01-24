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
struct super_block {int dummy; } ;
struct TYPE_2__ {scalar_t__ nfs; } ;
struct msdos_sb_info {TYPE_1__ options; } ;
struct msdos_dir_entry {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {struct super_block* d_sb; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ FAT_NFS_NOSTALE_RO ; 
 struct msdos_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct buffer_head**,struct msdos_dir_entry**) ; 
 int FUNC6 (struct msdos_sb_info*,struct msdos_dir_entry*) ; 
 struct inode* FUNC7 (struct super_block*,int) ; 

__attribute__((used)) static struct dentry *FUNC8(struct dentry *child_dir)
{
	struct super_block *sb = child_dir->d_sb;
	struct buffer_head *bh = NULL;
	struct msdos_dir_entry *de;
	struct inode *parent_inode = NULL;
	struct msdos_sb_info *sbi = FUNC0(sb);

	if (!FUNC5(FUNC2(child_dir), &bh, &de)) {
		int parent_logstart = FUNC6(sbi, de);
		parent_inode = FUNC4(sb, parent_logstart);
		if (!parent_inode && sbi->options.nfs == FAT_NFS_NOSTALE_RO)
			parent_inode = FUNC7(sb, parent_logstart);
	}
	FUNC1(bh);

	return FUNC3(parent_inode);
}