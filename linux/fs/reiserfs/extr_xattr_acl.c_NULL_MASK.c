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
struct inode {int dummy; } ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int ENODATA ; 
 int ENOMEM ; 
 int ENOSYS ; 
 struct posix_acl* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 char* XATTR_NAME_POSIX_ACL_ACCESS ; 
 char* XATTR_NAME_POSIX_ACL_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC4 (char*,int) ; 
 int FUNC5 (struct inode*,char*,char*,int) ; 

struct posix_acl *FUNC6(struct inode *inode, int type)
{
	char *name, *value;
	struct posix_acl *acl;
	int size;
	int retval;

	switch (type) {
	case ACL_TYPE_ACCESS:
		name = XATTR_NAME_POSIX_ACL_ACCESS;
		break;
	case ACL_TYPE_DEFAULT:
		name = XATTR_NAME_POSIX_ACL_DEFAULT;
		break;
	default:
		FUNC0();
	}

	size = FUNC5(inode, name, NULL, 0);
	if (size < 0) {
		if (size == -ENODATA || size == -ENOSYS)
			return NULL;
		return FUNC1(size);
	}

	value = FUNC3(size, GFP_NOFS);
	if (!value)
		return FUNC1(-ENOMEM);

	retval = FUNC5(inode, name, value, size);
	if (retval == -ENODATA || retval == -ENOSYS) {
		/*
		 * This shouldn't actually happen as it should have
		 * been caught above.. but just in case
		 */
		acl = NULL;
	} else if (retval < 0) {
		acl = FUNC1(retval);
	} else {
		acl = FUNC4(value, retval);
	}

	FUNC2(value);
	return acl;
}