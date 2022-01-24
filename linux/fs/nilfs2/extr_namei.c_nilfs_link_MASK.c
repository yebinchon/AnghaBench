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
struct nilfs_transaction_info {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ctime; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct nilfs_transaction_info*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct dentry *old_dentry, struct inode *dir,
		      struct dentry *dentry)
{
	struct inode *inode = FUNC1(old_dentry);
	struct nilfs_transaction_info ti;
	int err;

	err = FUNC9(dir->i_sb, &ti, 1);
	if (err)
		return err;

	inode->i_ctime = FUNC0(inode);
	FUNC5(inode);
	FUNC3(inode);

	err = FUNC7(dentry, inode);
	if (!err) {
		FUNC2(dentry, inode);
		err = FUNC10(dir->i_sb);
	} else {
		FUNC4(inode);
		FUNC6(inode);
		FUNC8(dir->i_sb);
	}

	return err;
}