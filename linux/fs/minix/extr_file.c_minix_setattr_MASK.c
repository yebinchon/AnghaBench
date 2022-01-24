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
struct iattr {int ia_valid; scalar_t__ ia_size; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ATTR_SIZE ; 
 struct inode* FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct iattr*) ; 
 int FUNC6 (struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = FUNC0(dentry);
	int error;

	error = FUNC6(dentry, attr);
	if (error)
		return error;

	if ((attr->ia_valid & ATTR_SIZE) &&
	    attr->ia_size != FUNC1(inode)) {
		error = FUNC2(inode, attr->ia_size);
		if (error)
			return error;

		FUNC7(inode, attr->ia_size);
		FUNC4(inode);
	}

	FUNC5(inode, attr);
	FUNC3(inode);
	return 0;
}