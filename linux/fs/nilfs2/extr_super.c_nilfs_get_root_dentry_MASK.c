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
struct nilfs_root {scalar_t__ cno; } ;
struct inode {int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_mode; } ;
struct dentry {int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 scalar_t__ NILFS_CPTREE_CURRENT_CNO ; 
 int /*<<< orphan*/  NILFS_ROOT_INO ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 struct inode* FUNC7 (struct super_block*,struct nilfs_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC9(struct super_block *sb,
				 struct nilfs_root *root,
				 struct dentry **root_dentry)
{
	struct inode *inode;
	struct dentry *dentry;
	int ret = 0;

	inode = FUNC7(sb, root, NILFS_ROOT_INO);
	if (FUNC0(inode)) {
		ret = FUNC1(inode);
		FUNC8(sb, KERN_ERR, "error %d getting root inode", ret);
		goto out;
	}
	if (!FUNC2(inode->i_mode) || !inode->i_blocks || !inode->i_size) {
		FUNC6(inode);
		FUNC8(sb, KERN_ERR, "corrupt root inode");
		ret = -EINVAL;
		goto out;
	}

	if (root->cno == NILFS_CPTREE_CURRENT_CNO) {
		dentry = FUNC3(inode);
		if (!dentry) {
			dentry = FUNC4(inode);
			if (!dentry) {
				ret = -ENOMEM;
				goto failed_dentry;
			}
		} else {
			FUNC6(inode);
		}
	} else {
		dentry = FUNC5(inode);
		if (FUNC0(dentry)) {
			ret = FUNC1(dentry);
			goto failed_dentry;
		}
	}
	*root_dentry = dentry;
 out:
	return ret;

 failed_dentry:
	FUNC8(sb, KERN_ERR, "error %d getting root dentry", ret);
	goto out;
}