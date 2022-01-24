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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct iattr {int ia_valid; int /*<<< orphan*/  ia_ctime; int /*<<< orphan*/  ia_mode; } ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int ATTR_CTIME ; 
 int ATTR_MODE ; 
 int EACCES ; 
 int EINVAL ; 
 int JFFS2_XPREFIX_ACL_ACCESS ; 
 int JFFS2_XPREFIX_ACL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,int,struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,struct iattr*) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ *,struct posix_acl**) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int,struct posix_acl*) ; 

int FUNC6(struct inode *inode, struct posix_acl *acl, int type)
{
	int rc, xprefix;

	switch (type) {
	case ACL_TYPE_ACCESS:
		xprefix = JFFS2_XPREFIX_ACL_ACCESS;
		if (acl) {
			umode_t mode;

			rc = FUNC4(inode, &mode, &acl);
			if (rc)
				return rc;
			if (inode->i_mode != mode) {
				struct iattr attr;

				attr.ia_valid = ATTR_MODE | ATTR_CTIME;
				attr.ia_mode = mode;
				attr.ia_ctime = FUNC2(inode);
				rc = FUNC3(inode, &attr);
				if (rc < 0)
					return rc;
			}
		}
		break;
	case ACL_TYPE_DEFAULT:
		xprefix = JFFS2_XPREFIX_ACL_DEFAULT;
		if (!FUNC0(inode->i_mode))
			return acl ? -EACCES : 0;
		break;
	default:
		return -EINVAL;
	}
	rc = FUNC1(inode, xprefix, acl);
	if (!rc)
		FUNC5(inode, type, acl);
	return rc;
}