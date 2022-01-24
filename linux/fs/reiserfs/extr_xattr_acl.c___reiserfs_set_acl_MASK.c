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
struct reiserfs_transaction_handle {int dummy; } ;
struct posix_acl {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int EACCES ; 
 int EINVAL ; 
 int ENODATA ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* XATTR_NAME_POSIX_ACL_ACCESS ; 
 char* XATTR_NAME_POSIX_ACL_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 void* FUNC6 (struct posix_acl*,size_t*) ; 
 int FUNC7 (struct reiserfs_transaction_handle*,struct inode*,char*,void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int,struct posix_acl*) ; 

__attribute__((used)) static int
FUNC9(struct reiserfs_transaction_handle *th, struct inode *inode,
		 int type, struct posix_acl *acl)
{
	char *name;
	void *value = NULL;
	size_t size = 0;
	int error;

	switch (type) {
	case ACL_TYPE_ACCESS:
		name = XATTR_NAME_POSIX_ACL_ACCESS;
		break;
	case ACL_TYPE_DEFAULT:
		name = XATTR_NAME_POSIX_ACL_DEFAULT;
		if (!FUNC2(inode->i_mode))
			return acl ? -EACCES : 0;
		break;
	default:
		return -EINVAL;
	}

	if (acl) {
		value = FUNC6(acl, &size);
		if (FUNC0(value))
			return (int)FUNC1(value);
	}

	error = FUNC7(th, inode, name, value, size, 0);

	/*
	 * Ensure that the inode gets dirtied if we're only using
	 * the mode bits and an old ACL didn't exist. We don't need
	 * to check if the inode is hashed here since we won't get
	 * called by reiserfs_inherit_default_acl().
	 */
	if (error == -ENODATA) {
		error = 0;
		if (type == ACL_TYPE_ACCESS) {
			inode->i_ctime = FUNC3(inode);
			FUNC5(inode);
		}
	}

	FUNC4(value);

	if (!error)
		FUNC8(inode, type, acl);

	return error;
}