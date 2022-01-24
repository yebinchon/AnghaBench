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
struct the_nilfs {scalar_t__ ns_cno; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_root {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  NILFS_ROOT_INO ; 
 struct dentry* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct super_block*,struct nilfs_root*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct the_nilfs*) ; 
 struct nilfs_root* FUNC5 (struct the_nilfs*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct nilfs_root*) ; 
 int FUNC7 (struct dentry*) ; 

int FUNC8(struct super_block *sb, __u64 cno)
{
	struct the_nilfs *nilfs = sb->s_fs_info;
	struct nilfs_root *root;
	struct inode *inode;
	struct dentry *dentry;
	int ret;

	if (cno > nilfs->ns_cno)
		return false;

	if (cno >= FUNC4(nilfs))
		return true;	/* protect recent checkpoints */

	ret = false;
	root = FUNC5(nilfs, cno);
	if (root) {
		inode = FUNC3(sb, root, NILFS_ROOT_INO);
		if (inode) {
			dentry = FUNC0(inode);
			if (dentry) {
				ret = FUNC7(dentry);
				FUNC1(dentry);
			}
			FUNC2(inode);
		}
		FUNC6(root);
	}
	return ret;
}