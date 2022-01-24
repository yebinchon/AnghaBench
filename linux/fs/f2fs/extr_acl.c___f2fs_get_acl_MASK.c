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
struct page {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ACL_TYPE_ACCESS ; 
 int ENODATA ; 
 int ENOMEM ; 
 struct posix_acl* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int F2FS_XATTR_INDEX_POSIX_ACL_ACCESS ; 
 int F2FS_XATTR_INDEX_POSIX_ACL_DEFAULT ; 
 int /*<<< orphan*/  GFP_F2FS_ZERO ; 
 struct posix_acl* FUNC2 (void*,int) ; 
 int FUNC3 (struct inode*,int,char*,void*,int,struct page*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

__attribute__((used)) static struct posix_acl *FUNC6(struct inode *inode, int type,
						struct page *dpage)
{
	int name_index = F2FS_XATTR_INDEX_POSIX_ACL_DEFAULT;
	void *value = NULL;
	struct posix_acl *acl;
	int retval;

	if (type == ACL_TYPE_ACCESS)
		name_index = F2FS_XATTR_INDEX_POSIX_ACL_ACCESS;

	retval = FUNC3(inode, name_index, "", NULL, 0, dpage);
	if (retval > 0) {
		value = FUNC4(FUNC1(inode), retval, GFP_F2FS_ZERO);
		if (!value)
			return FUNC0(-ENOMEM);
		retval = FUNC3(inode, name_index, "", value,
							retval, dpage);
	}

	if (retval > 0)
		acl = FUNC2(value, retval);
	else if (retval == -ENODATA)
		acl = NULL;
	else
		acl = FUNC0(retval);
	FUNC5(value);

	return acl;
}