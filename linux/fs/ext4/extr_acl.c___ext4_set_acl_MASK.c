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
struct inode {int /*<<< orphan*/  i_mode; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int EACCES ; 
 int EINVAL ; 
 int EXT4_XATTR_INDEX_POSIX_ACL_ACCESS ; 
 int EXT4_XATTR_INDEX_POSIX_ACL_DEFAULT ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct posix_acl*,size_t*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct inode*,int,char*,void*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int,struct posix_acl*) ; 

__attribute__((used)) static int
FUNC7(handle_t *handle, struct inode *inode, int type,
	     struct posix_acl *acl, int xattr_flags)
{
	int name_index;
	void *value = NULL;
	size_t size = 0;
	int error;

	switch (type) {
	case ACL_TYPE_ACCESS:
		name_index = EXT4_XATTR_INDEX_POSIX_ACL_ACCESS;
		break;

	case ACL_TYPE_DEFAULT:
		name_index = EXT4_XATTR_INDEX_POSIX_ACL_DEFAULT;
		if (!FUNC2(inode->i_mode))
			return acl ? -EACCES : 0;
		break;

	default:
		return -EINVAL;
	}
	if (acl) {
		value = FUNC3(acl, &size);
		if (FUNC0(value))
			return (int)FUNC1(value);
	}

	error = FUNC4(handle, inode, name_index, "",
				      value, size, xattr_flags);

	FUNC5(value);
	if (!error) {
		FUNC6(inode, type, acl);
	}

	return error;
}