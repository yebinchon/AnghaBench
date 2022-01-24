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
typedef  int /*<<< orphan*/  umode_t ;
struct super_block {int dummy; } ;
struct inode {int i_size; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; scalar_t__ i_ino; } ;
struct hfsplus_sb_info {int data_clump_blocks; int /*<<< orphan*/  file_count; int /*<<< orphan*/  folder_count; int /*<<< orphan*/  next_cnid; } ;
struct hfsplus_inode_info {int clump_blocks; int /*<<< orphan*/ * rsrc_inode; scalar_t__ fs_blocks; scalar_t__ phys_size; scalar_t__ cached_blocks; scalar_t__ cached_start; scalar_t__ first_blocks; scalar_t__ alloc_blocks; int /*<<< orphan*/  cached_extents; int /*<<< orphan*/  first_extents; scalar_t__ subfolders; scalar_t__ userflags; scalar_t__ flags; scalar_t__ extent_state; int /*<<< orphan*/  opencnt; int /*<<< orphan*/  extents_lock; int /*<<< orphan*/  open_dir_lock; int /*<<< orphan*/  open_dir_list; } ;
typedef  int /*<<< orphan*/  hfsplus_extent_rec ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 struct hfsplus_inode_info* FUNC0 (struct inode*) ; 
 struct hfsplus_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  hfsplus_aops ; 
 int /*<<< orphan*/  hfsplus_dir_inode_operations ; 
 int /*<<< orphan*/  hfsplus_dir_operations ; 
 int /*<<< orphan*/  hfsplus_file_inode_operations ; 
 int /*<<< orphan*/  hfsplus_file_operations ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC15 (struct super_block*) ; 
 int /*<<< orphan*/  page_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

struct inode *FUNC18(struct super_block *sb, struct inode *dir,
				umode_t mode)
{
	struct hfsplus_sb_info *sbi = FUNC1(sb);
	struct inode *inode = FUNC15(sb);
	struct hfsplus_inode_info *hip;

	if (!inode)
		return NULL;

	inode->i_ino = sbi->next_cnid++;
	FUNC9(inode, dir, mode);
	FUNC16(inode, 1);
	inode->i_mtime = inode->i_atime = inode->i_ctime = FUNC7(inode);

	hip = FUNC0(inode);
	FUNC2(&hip->open_dir_list);
	FUNC17(&hip->open_dir_lock);
	FUNC14(&hip->extents_lock);
	FUNC6(&hip->opencnt, 0);
	hip->extent_state = 0;
	hip->flags = 0;
	hip->userflags = 0;
	hip->subfolders = 0;
	FUNC13(hip->first_extents, 0, sizeof(hfsplus_extent_rec));
	FUNC13(hip->cached_extents, 0, sizeof(hfsplus_extent_rec));
	hip->alloc_blocks = 0;
	hip->first_blocks = 0;
	hip->cached_start = 0;
	hip->cached_blocks = 0;
	hip->phys_size = 0;
	hip->fs_blocks = 0;
	hip->rsrc_inode = NULL;
	if (FUNC3(inode->i_mode)) {
		inode->i_size = 2;
		sbi->folder_count++;
		inode->i_op = &hfsplus_dir_inode_operations;
		inode->i_fop = &hfsplus_dir_operations;
	} else if (FUNC5(inode->i_mode)) {
		sbi->file_count++;
		inode->i_op = &hfsplus_file_inode_operations;
		inode->i_fop = &hfsplus_file_operations;
		inode->i_mapping->a_ops = &hfsplus_aops;
		hip->clump_blocks = sbi->data_clump_blocks;
	} else if (FUNC4(inode->i_mode)) {
		sbi->file_count++;
		inode->i_op = &page_symlink_inode_operations;
		FUNC10(inode);
		inode->i_mapping->a_ops = &hfsplus_aops;
		hip->clump_blocks = 1;
	} else
		sbi->file_count++;
	FUNC11(inode);
	FUNC12(inode);
	FUNC8(sb);

	return inode;
}