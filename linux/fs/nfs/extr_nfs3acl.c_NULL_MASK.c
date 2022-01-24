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
struct dentry {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int /*<<< orphan*/  XATTR_NAME_POSIX_ACL_ACCESS ; 
 int /*<<< orphan*/  XATTR_NAME_POSIX_ACL_DEFAULT ; 
 struct inode* FUNC0 (struct dentry*) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,int*) ; 

ssize_t
FUNC2(struct dentry *dentry, char *data, size_t size)
{
	struct inode *inode = FUNC0(dentry);
	ssize_t result = 0;
	int error;

	error = FUNC1(inode, ACL_TYPE_ACCESS,
			XATTR_NAME_POSIX_ACL_ACCESS, data, size, &result);
	if (error)
		return error;

	error = FUNC1(inode, ACL_TYPE_DEFAULT,
			XATTR_NAME_POSIX_ACL_DEFAULT, data, size, &result);
	if (error)
		return error;
	return result;
}