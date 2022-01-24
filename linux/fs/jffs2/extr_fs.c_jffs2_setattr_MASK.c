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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct iattr {int ia_valid; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ATTR_MODE ; 
 struct inode* FUNC0 (struct dentry*) ; 
 int FUNC1 (struct inode*,struct iattr*) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dentry*,struct iattr*) ; 

int FUNC4(struct dentry *dentry, struct iattr *iattr)
{
	struct inode *inode = FUNC0(dentry);
	int rc;

	rc = FUNC3(dentry, iattr);
	if (rc)
		return rc;

	rc = FUNC1(inode, iattr);
	if (!rc && (iattr->ia_valid & ATTR_MODE))
		rc = FUNC2(inode, inode->i_mode);

	return rc;
}