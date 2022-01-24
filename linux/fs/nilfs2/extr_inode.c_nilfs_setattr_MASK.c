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
struct nilfs_transaction_info {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ATTR_MODE ; 
 int ATTR_SIZE ; 
 struct inode* FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int FUNC6 (struct super_block*,struct nilfs_transaction_info*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct iattr*) ; 
 int FUNC10 (struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC12 (int) ; 

int FUNC13(struct dentry *dentry, struct iattr *iattr)
{
	struct nilfs_transaction_info ti;
	struct inode *inode = FUNC0(dentry);
	struct super_block *sb = inode->i_sb;
	int err;

	err = FUNC10(dentry, iattr);
	if (err)
		return err;

	err = FUNC6(sb, &ti, 0);
	if (FUNC12(err))
		return err;

	if ((iattr->ia_valid & ATTR_SIZE) &&
	    iattr->ia_size != FUNC1(inode)) {
		FUNC2(inode);
		FUNC11(inode, iattr->ia_size);
		FUNC8(inode);
	}

	FUNC9(inode, iattr);
	FUNC3(inode);

	if (iattr->ia_valid & ATTR_MODE) {
		err = FUNC4(inode);
		if (FUNC12(err))
			goto out_err;
	}

	return FUNC7(sb);

out_err:
	FUNC5(sb);
	return err;
}