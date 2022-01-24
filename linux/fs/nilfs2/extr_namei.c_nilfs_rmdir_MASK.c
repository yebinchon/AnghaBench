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
struct inode {int /*<<< orphan*/  i_sb; scalar_t__ i_size; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOTEMPTY ; 
 struct inode* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,struct dentry*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct nilfs_transaction_info*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct inode *dir, struct dentry *dentry)
{
	struct inode *inode = FUNC0(dentry);
	struct nilfs_transaction_info ti;
	int err;

	err = FUNC6(dir->i_sb, &ti, 0);
	if (err)
		return err;

	err = -ENOTEMPTY;
	if (FUNC3(inode)) {
		err = FUNC2(dir, dentry);
		if (!err) {
			inode->i_size = 0;
			FUNC1(inode);
			FUNC4(inode);
			FUNC1(dir);
			FUNC4(dir);
		}
	}
	if (!err)
		err = FUNC7(dir->i_sb);
	else
		FUNC5(dir->i_sb);

	return err;
}