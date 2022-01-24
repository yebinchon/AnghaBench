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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct dentry*) ; 
 int FUNC1 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct nilfs_transaction_info*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct inode *dir, struct dentry *dentry)
{
	struct nilfs_transaction_info ti;
	int err;

	err = FUNC4(dir->i_sb, &ti, 0);
	if (err)
		return err;

	err = FUNC1(dir, dentry);

	if (!err) {
		FUNC2(dir);
		FUNC2(FUNC0(dentry));
		err = FUNC5(dir->i_sb);
	} else
		FUNC3(dir->i_sb);

	return err;
}