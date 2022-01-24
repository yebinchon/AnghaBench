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
struct buffer_head {int dummy; } ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int EINVAL ; 
 int ENODATA ; 
 int ENOMEM ; 
 struct posix_acl* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int OCFS2_XATTR_INDEX_POSIX_ACL_ACCESS ; 
 int OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC3 (char*,int) ; 
 int FUNC4 (struct inode*,struct buffer_head*,int,char*,char*,int) ; 

__attribute__((used)) static struct posix_acl *FUNC5(struct inode *inode,
					      int type,
					      struct buffer_head *di_bh)
{
	int name_index;
	char *value = NULL;
	struct posix_acl *acl;
	int retval;

	switch (type) {
	case ACL_TYPE_ACCESS:
		name_index = OCFS2_XATTR_INDEX_POSIX_ACL_ACCESS;
		break;
	case ACL_TYPE_DEFAULT:
		name_index = OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT;
		break;
	default:
		return FUNC0(-EINVAL);
	}

	retval = FUNC4(inode, di_bh, name_index, "", NULL, 0);
	if (retval > 0) {
		value = FUNC2(retval, GFP_NOFS);
		if (!value)
			return FUNC0(-ENOMEM);
		retval = FUNC4(inode, di_bh, name_index,
						"", value, retval);
	}

	if (retval > 0)
		acl = FUNC3(value, retval);
	else if (retval == -ENODATA || retval == 0)
		acl = NULL;
	else
		acl = FUNC0(retval);

	FUNC1(value);

	return acl;
}