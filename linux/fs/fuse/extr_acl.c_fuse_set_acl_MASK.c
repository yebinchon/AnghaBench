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
struct posix_acl {int /*<<< orphan*/  a_count; } ;
struct inode {int dummy; } ;
struct fuse_conn {int /*<<< orphan*/  user_ns; scalar_t__ no_setxattr; int /*<<< orphan*/  posix_acl; } ;

/* Variables and functions */
 int ACL_TYPE_ACCESS ; 
 int ACL_TYPE_DEFAULT ; 
 int E2BIG ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t PAGE_SIZE ; 
 char* XATTR_NAME_POSIX_ACL_ACCESS ; 
 char* XATTR_NAME_POSIX_ACL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,char const*) ; 
 int FUNC3 (struct inode*,char const*,void*,size_t,int /*<<< orphan*/ ) ; 
 struct fuse_conn* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct posix_acl*,void*,size_t) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct inode *inode, struct posix_acl *acl, int type)
{
	struct fuse_conn *fc = FUNC4(inode);
	const char *name;
	int ret;

	if (!fc->posix_acl || fc->no_setxattr)
		return -EOPNOTSUPP;

	if (type == ACL_TYPE_ACCESS)
		name = XATTR_NAME_POSIX_ACL_ACCESS;
	else if (type == ACL_TYPE_DEFAULT)
		name = XATTR_NAME_POSIX_ACL_DEFAULT;
	else
		return -EINVAL;

	if (acl) {
		/*
		 * Fuse userspace is responsible for updating access
		 * permissions in the inode, if needed. fuse_setxattr
		 * invalidates the inode attributes, which will force
		 * them to be refreshed the next time they are used,
		 * and it also updates i_ctime.
		 */
		size_t size = FUNC8(acl->a_count);
		void *value;

		if (size > PAGE_SIZE)
			return -E2BIG;

		value = FUNC6(size, GFP_KERNEL);
		if (!value)
			return -ENOMEM;

		ret = FUNC7(fc->user_ns, acl, value, size);
		if (ret < 0) {
			FUNC5(value);
			return ret;
		}

		ret = FUNC3(inode, name, value, size, 0);
		FUNC5(value);
	} else {
		ret = FUNC2(inode, name);
	}
	FUNC0(inode);
	FUNC1(inode);

	return ret;
}