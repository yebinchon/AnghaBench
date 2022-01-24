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
 int EINVAL ; 
 int ENODATA ; 
 int ENOMEM ; 
 struct posix_acl* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* XATTR_NAME_POSIX_ACL_ACCESS ; 
 char* XATTR_NAME_POSIX_ACL_DEFAULT ; 
 int FUNC1 (struct inode*,char*,char*,int) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC4 (int /*<<< orphan*/ *,char*,int) ; 

struct posix_acl *FUNC5(struct inode *inode, int type)
{
	struct posix_acl *acl;
	char *ea_name;
	int size;
	char *value = NULL;

	switch(type) {
		case ACL_TYPE_ACCESS:
			ea_name = XATTR_NAME_POSIX_ACL_ACCESS;
			break;
		case ACL_TYPE_DEFAULT:
			ea_name = XATTR_NAME_POSIX_ACL_DEFAULT;
			break;
		default:
			return FUNC0(-EINVAL);
	}

	size = FUNC1(inode, ea_name, NULL, 0);

	if (size > 0) {
		value = FUNC3(size, GFP_KERNEL);
		if (!value)
			return FUNC0(-ENOMEM);
		size = FUNC1(inode, ea_name, value, size);
	}

	if (size < 0) {
		if (size == -ENODATA)
			acl = NULL;
		else
			acl = FUNC0(size);
	} else {
		acl = FUNC4(&init_user_ns, value, size);
	}
	FUNC2(value);
	return acl;
}