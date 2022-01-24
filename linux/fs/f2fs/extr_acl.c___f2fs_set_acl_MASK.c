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
typedef  int /*<<< orphan*/  umode_t ;
struct posix_acl {int dummy; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int F2FS_XATTR_INDEX_POSIX_ACL_ACCESS ; 
 int F2FS_XATTR_INDEX_POSIX_ACL_DEFAULT ; 
 int /*<<< orphan*/  FI_ACL_MODE ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,struct posix_acl*,size_t*) ; 
 int FUNC6 (struct inode*,int,char*,void*,size_t,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ *,struct posix_acl**) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int,struct posix_acl*) ; 

__attribute__((used)) static int FUNC11(struct inode *inode, int type,
			struct posix_acl *acl, struct page *ipage)
{
	int name_index;
	void *value = NULL;
	size_t size = 0;
	int error;
	umode_t mode = inode->i_mode;

	switch (type) {
	case ACL_TYPE_ACCESS:
		name_index = F2FS_XATTR_INDEX_POSIX_ACL_ACCESS;
		if (acl && !ipage) {
			error = FUNC8(inode, &mode, &acl);
			if (error)
				return error;
			FUNC9(inode, mode);
		}
		break;

	case ACL_TYPE_DEFAULT:
		name_index = F2FS_XATTR_INDEX_POSIX_ACL_DEFAULT;
		if (!FUNC3(inode->i_mode))
			return acl ? -EACCES : 0;
		break;

	default:
		return -EINVAL;
	}

	if (acl) {
		value = FUNC5(FUNC0(inode), acl, &size);
		if (FUNC1(value)) {
			FUNC4(inode, FI_ACL_MODE);
			return FUNC2(value);
		}
	}

	error = FUNC6(inode, name_index, "", value, size, ipage, 0);

	FUNC7(value);
	if (!error)
		FUNC10(inode, type, acl);

	FUNC4(inode, FI_ACL_MODE);
	return error;
}