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
struct iattr {int ia_valid; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ATTR_MODE ; 
 int EPERM ; 
 struct inode* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct iattr*) ; 
 int FUNC3 (struct dentry*,struct iattr*) ; 

int FUNC4(struct dentry *dentry, struct iattr *attr)
{
	int error;
	struct inode *inode = FUNC0(dentry);

	if (attr->ia_valid & ATTR_MODE)
		return -EPERM;

	error = FUNC3(dentry, attr);
	if (error)
		return error;

	FUNC2(inode, attr);
	FUNC1(inode);
	return 0;
}