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
struct inode {int i_mode; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_ino; } ;
struct hugetlbfs_fs_context {int mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  hugetlbfs_dir_inode_operations ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  simple_dir_operations ; 

__attribute__((used)) static struct inode *FUNC5(struct super_block *sb,
					struct hugetlbfs_fs_context *ctx)
{
	struct inode *inode;

	inode = FUNC4(sb);
	if (inode) {
		inode->i_ino = FUNC1();
		inode->i_mode = S_IFDIR | ctx->mode;
		inode->i_uid = ctx->uid;
		inode->i_gid = ctx->gid;
		inode->i_atime = inode->i_mtime = inode->i_ctime = FUNC0(inode);
		inode->i_op = &hugetlbfs_dir_inode_operations;
		inode->i_fop = &simple_dir_operations;
		/* directory inodes start off with i_nlink == 2 (for "." entry) */
		FUNC2(inode);
		FUNC3(inode);
	}
	return inode;
}