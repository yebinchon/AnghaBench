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
struct nilfs_transaction_info {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct nilfs_transaction_info*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct inode *dir, struct dentry *dentry, umode_t mode, dev_t rdev)
{
	struct inode *inode;
	struct nilfs_transaction_info ti;
	int err;

	err = FUNC7(dir->i_sb, &ti, 1);
	if (err)
		return err;
	inode = FUNC5(dir, mode);
	err = FUNC1(inode);
	if (!FUNC0(inode)) {
		FUNC2(inode, inode->i_mode, rdev);
		FUNC4(inode);
		err = FUNC3(dentry, inode);
	}
	if (!err)
		err = FUNC8(dir->i_sb);
	else
		FUNC6(dir->i_sb);

	return err;
}