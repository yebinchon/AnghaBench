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
struct inode {int dummy; } ;
struct iattr {int ia_valid; int /*<<< orphan*/  ia_size; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ATTR_SIZE ; 
 struct inode* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct iattr*) ; 
 int FUNC3 (struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 

int FUNC5(struct dentry *dentry, struct iattr *iattr)
{
	struct inode *inode = FUNC0(dentry);
	int error;

	error = FUNC3(dentry, iattr);
	if (error)
		return error;

	if (iattr->ia_valid & ATTR_SIZE)
		FUNC4(inode, iattr->ia_size);
	FUNC2(inode, iattr);
	FUNC1(inode);
	return 0;
}