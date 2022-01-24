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
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC7 (struct inode*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct iattr*) ; 
 int FUNC12 (struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC15(struct dentry *dentry, struct iattr *iattr)
{
	struct inode *inode = FUNC0(dentry);
	int rc;

	rc = FUNC12(dentry, iattr);
	if (rc)
		return rc;

	if (FUNC7(inode, iattr)) {
		rc = FUNC1(inode);
		if (rc)
			return rc;
	}
	if ((iattr->ia_valid & ATTR_UID && !FUNC14(iattr->ia_uid, inode->i_uid)) ||
	    (iattr->ia_valid & ATTR_GID && !FUNC3(iattr->ia_gid, inode->i_gid))) {
		rc = FUNC2(inode, iattr);
		if (rc)
			return rc;
	}

	if ((iattr->ia_valid & ATTR_SIZE) &&
	    iattr->ia_size != FUNC4(inode)) {
		FUNC5(inode);

		rc = FUNC6(inode, iattr->ia_size);
		if (rc)
			return rc;

		FUNC13(inode, iattr->ia_size);
		FUNC8(inode);
	}

	FUNC11(inode, iattr);
	FUNC9(inode);

	if (iattr->ia_valid & ATTR_MODE)
		rc = FUNC10(inode, inode->i_mode);
	return rc;
}