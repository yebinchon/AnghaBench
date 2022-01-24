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
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; int /*<<< orphan*/  ia_gid; int /*<<< orphan*/  ia_uid; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_SIZE ; 
 int ATTR_UID ; 
 struct inode* FUNC0 (struct dentry*) ; 
 int FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,struct iattr*) ; 
 int FUNC3 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct inode*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct iattr*) ; 
 int FUNC9 (struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(struct dentry *dentry, struct iattr *iattr)
{
	struct inode *inode = FUNC0(dentry);
	int error;

	error = FUNC9(dentry, iattr);
	if (error)
		return error;

	if (FUNC5(inode, iattr)) {
		error = FUNC1(inode);
		if (error)
			return error;
	}
	if ((iattr->ia_valid & ATTR_UID && !FUNC10(iattr->ia_uid, inode->i_uid)) ||
	    (iattr->ia_valid & ATTR_GID && !FUNC4(iattr->ia_gid, inode->i_gid))) {
		error = FUNC2(inode, iattr);
		if (error)
			return error;
	}
	if (iattr->ia_valid & ATTR_SIZE && iattr->ia_size != inode->i_size) {
		error = FUNC3(inode, iattr->ia_size);
		if (error)
			return error;
	}
	FUNC8(inode, iattr);
	if (iattr->ia_valid & ATTR_MODE)
		error = FUNC7(inode, inode->i_mode);
	FUNC6(inode);

	return error;
}