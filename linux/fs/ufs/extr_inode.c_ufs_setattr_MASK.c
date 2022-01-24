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
struct inode {scalar_t__ i_size; } ;
struct iattr {unsigned int ia_valid; scalar_t__ ia_size; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 unsigned int ATTR_SIZE ; 
 struct inode* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct iattr*) ; 
 int FUNC3 (struct dentry*,struct iattr*) ; 
 int FUNC4 (struct inode*,scalar_t__) ; 

int FUNC5(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = FUNC0(dentry);
	unsigned int ia_valid = attr->ia_valid;
	int error;

	error = FUNC3(dentry, attr);
	if (error)
		return error;

	if (ia_valid & ATTR_SIZE && attr->ia_size != inode->i_size) {
		error = FUNC4(inode, attr->ia_size);
		if (error)
			return error;
	}

	FUNC2(inode, attr);
	FUNC1(inode);
	return 0;
}