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
struct posix_acl {int dummy; } ;
struct inode {int /*<<< orphan*/ * i_acl; int /*<<< orphan*/ * i_default_acl; int /*<<< orphan*/  i_mode; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int /*<<< orphan*/  XATTR_CREATE ; 
 int FUNC0 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,struct posix_acl*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ *,struct posix_acl**,struct posix_acl**) ; 
 int /*<<< orphan*/  FUNC2 (struct posix_acl*) ; 

int
FUNC3(handle_t *handle, struct inode *inode, struct inode *dir)
{
	struct posix_acl *default_acl, *acl;
	int error;

	error = FUNC1(dir, &inode->i_mode, &default_acl, &acl);
	if (error)
		return error;

	if (default_acl) {
		error = FUNC0(handle, inode, ACL_TYPE_DEFAULT,
				       default_acl, XATTR_CREATE);
		FUNC2(default_acl);
	} else {
		inode->i_default_acl = NULL;
	}
	if (acl) {
		if (!error)
			error = FUNC0(handle, inode, ACL_TYPE_ACCESS,
					       acl, XATTR_CREATE);
		FUNC2(acl);
	} else {
		inode->i_acl = NULL;
	}
	return error;
}