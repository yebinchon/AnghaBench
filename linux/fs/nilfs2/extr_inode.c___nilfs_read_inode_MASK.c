#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct the_nilfs {int /*<<< orphan*/  ns_dat; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_root {int /*<<< orphan*/  ifile; } ;
struct nilfs_inode {int /*<<< orphan*/  i_device_code; } ;
struct inode {TYPE_1__* i_mapping; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; } ;
struct buffer_head {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  mi_sem; } ;
struct TYPE_4__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __GFP_FS ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nilfs_aops ; 
 int /*<<< orphan*/  nilfs_dir_inode_operations ; 
 int /*<<< orphan*/  nilfs_dir_operations ; 
 int /*<<< orphan*/  nilfs_file_inode_operations ; 
 int /*<<< orphan*/  nilfs_file_operations ; 
 int FUNC12 (int /*<<< orphan*/ ,unsigned long,struct buffer_head**) ; 
 struct nilfs_inode* FUNC13 (int /*<<< orphan*/ ,unsigned long,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,unsigned long,struct buffer_head*) ; 
 int FUNC15 (struct inode*,struct nilfs_inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  nilfs_special_inode_operations ; 
 int /*<<< orphan*/  nilfs_symlink_inode_operations ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct super_block *sb,
			      struct nilfs_root *root, unsigned long ino,
			      struct inode *inode)
{
	struct the_nilfs *nilfs = sb->s_fs_info;
	struct buffer_head *bh;
	struct nilfs_inode *raw_inode;
	int err;

	FUNC5(&FUNC0(nilfs->ns_dat)->mi_sem);
	err = FUNC12(root->ifile, ino, &bh);
	if (FUNC17(err))
		goto bad_inode;

	raw_inode = FUNC13(root->ifile, ino, bh);

	err = FUNC15(inode, raw_inode);
	if (err)
		goto failed_unmap;

	if (FUNC3(inode->i_mode)) {
		inode->i_op = &nilfs_file_inode_operations;
		inode->i_fop = &nilfs_file_operations;
		inode->i_mapping->a_ops = &nilfs_aops;
	} else if (FUNC1(inode->i_mode)) {
		inode->i_op = &nilfs_dir_inode_operations;
		inode->i_fop = &nilfs_dir_operations;
		inode->i_mapping->a_ops = &nilfs_aops;
	} else if (FUNC2(inode->i_mode)) {
		inode->i_op = &nilfs_symlink_inode_operations;
		FUNC8(inode);
		inode->i_mapping->a_ops = &nilfs_aops;
	} else {
		inode->i_op = &nilfs_special_inode_operations;
		FUNC7(
			inode, inode->i_mode,
			FUNC6(FUNC9(raw_inode->i_device_code)));
	}
	FUNC14(root->ifile, ino, bh);
	FUNC4(bh);
	FUNC18(&FUNC0(nilfs->ns_dat)->mi_sem);
	FUNC16(inode);
	FUNC11(inode->i_mapping,
			   FUNC10(inode->i_mapping, ~__GFP_FS));
	return 0;

 failed_unmap:
	FUNC14(root->ifile, ino, bh);
	FUNC4(bh);

 bad_inode:
	FUNC18(&FUNC0(nilfs->ns_dat)->mi_sem);
	return err;
}