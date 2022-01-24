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
struct fuse_conn {scalar_t__ no_getxattr; int /*<<< orphan*/  user_ns; int /*<<< orphan*/  posix_acl; } ;

/* Variables and functions */
 int ACL_TYPE_ACCESS ; 
 int ACL_TYPE_DEFAULT ; 
 int E2BIG ; 
 int ENODATA ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int ERANGE ; 
 struct posix_acl* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 char* XATTR_NAME_POSIX_ACL_ACCESS ; 
 char* XATTR_NAME_POSIX_ACL_DEFAULT ; 
 int FUNC1 (struct inode*,char const*,void*,int /*<<< orphan*/ ) ; 
 struct fuse_conn* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC5 (int /*<<< orphan*/ ,void*,int) ; 

struct posix_acl *FUNC6(struct inode *inode, int type)
{
	struct fuse_conn *fc = FUNC2(inode);
	int size;
	const char *name;
	void *value = NULL;
	struct posix_acl *acl;

	if (!fc->posix_acl || fc->no_getxattr)
		return NULL;

	if (type == ACL_TYPE_ACCESS)
		name = XATTR_NAME_POSIX_ACL_ACCESS;
	else if (type == ACL_TYPE_DEFAULT)
		name = XATTR_NAME_POSIX_ACL_DEFAULT;
	else
		return FUNC0(-EOPNOTSUPP);

	value = FUNC4(PAGE_SIZE, GFP_KERNEL);
	if (!value)
		return FUNC0(-ENOMEM);
	size = FUNC1(inode, name, value, PAGE_SIZE);
	if (size > 0)
		acl = FUNC5(fc->user_ns, value, size);
	else if ((size == 0) || (size == -ENODATA) ||
		 (size == -EOPNOTSUPP && fc->no_getxattr))
		acl = NULL;
	else if (size == -ERANGE)
		acl = FUNC0(-E2BIG);
	else
		acl = FUNC0(size);

	FUNC3(value);
	return acl;
}