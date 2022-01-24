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
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ATTR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 int FUNC2 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct iattr*) ; 
 int FUNC8 (struct dentry*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct dentry *dentry, struct iattr *attr)
{
	struct inode *inode = FUNC1(dentry);
	int error;

	error = FUNC8(dentry, attr);
	if (error)
		return error;

	if ((attr->ia_valid & ATTR_SIZE) &&
	    attr->ia_size != FUNC4(inode)) {
		FUNC5(inode);
		if (attr->ia_size > inode->i_size) {
			error = FUNC2(inode,
							   attr->ia_size);
			if (error)
				return error;
		}
		FUNC9(inode, attr->ia_size);
		FUNC3(inode);
		inode->i_mtime = inode->i_ctime = FUNC0(inode);
	}

	FUNC7(inode, attr);
	FUNC6(inode);

	return 0;
}