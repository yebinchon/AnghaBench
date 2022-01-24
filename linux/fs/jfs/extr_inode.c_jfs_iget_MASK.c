#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {int i_state; size_t i_size; char* i_link; int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_op; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_fop; } ;
struct TYPE_4__ {char* i_inline; } ;
struct TYPE_3__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 size_t IDATASIZE ; 
 int I_NEW ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 struct inode* FUNC7 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  jfs_aops ; 
 int /*<<< orphan*/  jfs_dir_inode_operations ; 
 int /*<<< orphan*/  jfs_dir_operations ; 
 int /*<<< orphan*/  jfs_fast_symlink_inode_operations ; 
 int /*<<< orphan*/  jfs_file_inode_operations ; 
 int /*<<< orphan*/  jfs_file_operations ; 
 int /*<<< orphan*/  page_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 

struct inode *FUNC11(struct super_block *sb, unsigned long ino)
{
	struct inode *inode;
	int ret;

	inode = FUNC7(sb, ino);
	if (!inode)
		return FUNC0(-ENOMEM);
	if (!(inode->i_state & I_NEW))
		return inode;

	ret = FUNC5(inode);
	if (ret < 0) {
		FUNC6(inode);
		return FUNC0(ret);
	}

	if (FUNC4(inode->i_mode)) {
		inode->i_op = &jfs_file_inode_operations;
		inode->i_fop = &jfs_file_operations;
		inode->i_mapping->a_ops = &jfs_aops;
	} else if (FUNC2(inode->i_mode)) {
		inode->i_op = &jfs_dir_inode_operations;
		inode->i_fop = &jfs_dir_operations;
	} else if (FUNC3(inode->i_mode)) {
		if (inode->i_size >= IDATASIZE) {
			inode->i_op = &page_symlink_inode_operations;
			FUNC9(inode);
			inode->i_mapping->a_ops = &jfs_aops;
		} else {
			inode->i_op = &jfs_fast_symlink_inode_operations;
			inode->i_link = FUNC1(inode)->i_inline;
			/*
			 * The inline data should be null-terminated, but
			 * don't let on-disk corruption crash the kernel
			 */
			inode->i_link[inode->i_size] = '\0';
		}
	} else {
		inode->i_op = &jfs_file_inode_operations;
		FUNC8(inode, inode->i_mode, inode->i_rdev);
	}
	FUNC10(inode);
	return inode;
}