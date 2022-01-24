#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int umode_t ;
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; TYPE_1__* i_mapping; int /*<<< orphan*/  i_ino; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_3__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_HIGHUSER ; 
#define  S_IFDIR 130 
#define  S_IFLNK 129 
 int S_IFMT ; 
#define  S_IFREG 128 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct inode const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 struct inode* FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  page_symlink_inode_operations ; 
 int /*<<< orphan*/  ramfs_aops ; 
 int /*<<< orphan*/  ramfs_dir_inode_operations ; 
 int /*<<< orphan*/  ramfs_file_inode_operations ; 
 int /*<<< orphan*/  ramfs_file_operations ; 
 int /*<<< orphan*/  simple_dir_operations ; 

struct inode *FUNC9(struct super_block *sb,
				const struct inode *dir, umode_t mode, dev_t dev)
{
	struct inode * inode = FUNC8(sb);

	if (inode) {
		inode->i_ino = FUNC1();
		FUNC4(inode, dir, mode);
		inode->i_mapping->a_ops = &ramfs_aops;
		FUNC6(inode->i_mapping, GFP_HIGHUSER);
		FUNC7(inode->i_mapping);
		inode->i_atime = inode->i_mtime = inode->i_ctime = FUNC0(inode);
		switch (mode & S_IFMT) {
		default:
			FUNC3(inode, mode, dev);
			break;
		case S_IFREG:
			inode->i_op = &ramfs_file_inode_operations;
			inode->i_fop = &ramfs_file_operations;
			break;
		case S_IFDIR:
			inode->i_op = &ramfs_dir_inode_operations;
			inode->i_fop = &simple_dir_operations;

			/* directory inodes start off with i_nlink == 2 (for "." entry) */
			FUNC2(inode);
			break;
		case S_IFLNK:
			inode->i_op = &page_symlink_inode_operations;
			FUNC5(inode);
			break;
		}
	}
	return inode;
}