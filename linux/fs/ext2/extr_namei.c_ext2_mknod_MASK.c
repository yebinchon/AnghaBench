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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_mode; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int FUNC3 (struct dentry*,struct inode*) ; 
 struct inode* FUNC4 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ext2_special_inode_operations ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 

__attribute__((used)) static int FUNC7 (struct inode * dir, struct dentry *dentry, umode_t mode, dev_t rdev)
{
	struct inode * inode;
	int err;

	err = FUNC2(dir);
	if (err)
		return err;

	inode = FUNC4 (dir, mode, &dentry->d_name);
	err = FUNC1(inode);
	if (!FUNC0(inode)) {
		FUNC5(inode, inode->i_mode, rdev);
#ifdef CONFIG_EXT2_FS_XATTR
		inode->i_op = &ext2_special_inode_operations;
#endif
		FUNC6(inode);
		err = FUNC3(dentry, inode);
	}
	return err;
}