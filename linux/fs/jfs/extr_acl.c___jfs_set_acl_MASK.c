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
typedef  int /*<<< orphan*/  tid_t ;
struct posix_acl {int /*<<< orphan*/  a_count; } ;
struct inode {int dummy; } ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* XATTR_NAME_POSIX_ACL_ACCESS ; 
 char* XATTR_NAME_POSIX_ACL_DEFAULT ; 
 int FUNC0 (int /*<<< orphan*/ ,struct inode*,char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct posix_acl*,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int,struct posix_acl*) ; 

__attribute__((used)) static int FUNC6(tid_t tid, struct inode *inode, int type,
		       struct posix_acl *acl)
{
	char *ea_name;
	int rc;
	int size = 0;
	char *value = NULL;

	switch (type) {
	case ACL_TYPE_ACCESS:
		ea_name = XATTR_NAME_POSIX_ACL_ACCESS;
		break;
	case ACL_TYPE_DEFAULT:
		ea_name = XATTR_NAME_POSIX_ACL_DEFAULT;
		break;
	default:
		return -EINVAL;
	}

	if (acl) {
		size = FUNC4(acl->a_count);
		value = FUNC2(size, GFP_KERNEL);
		if (!value)
			return -ENOMEM;
		rc = FUNC3(&init_user_ns, acl, value, size);
		if (rc < 0)
			goto out;
	}
	rc = FUNC0(tid, inode, ea_name, value, size, 0);
out:
	FUNC1(value);

	if (!rc)
		FUNC5(inode, type, acl);

	return rc;
}