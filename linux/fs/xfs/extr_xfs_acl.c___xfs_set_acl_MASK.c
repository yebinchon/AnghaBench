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
struct xfs_inode {int /*<<< orphan*/  i_mount; } ;
struct xfs_acl_entry {int dummy; } ;
struct xfs_acl {int dummy; } ;
struct posix_acl {int a_count; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int /*<<< orphan*/  ATTR_ROOT ; 
 int EACCES ; 
 int EINVAL ; 
 int ENOATTR ; 
 int ENOMEM ; 
 unsigned char* SGI_ACL_DEFAULT ; 
 unsigned char* SGI_ACL_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct xfs_inode* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_acl*) ; 
 struct xfs_acl* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int,struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_acl*,struct posix_acl*) ; 
 int FUNC8 (struct xfs_inode*,unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct xfs_inode*,unsigned char*,unsigned char*,int,int /*<<< orphan*/ ) ; 

int
FUNC10(struct inode *inode, struct posix_acl *acl, int type)
{
	struct xfs_inode *ip = FUNC3(inode);
	unsigned char *ea_name;
	int error;

	switch (type) {
	case ACL_TYPE_ACCESS:
		ea_name = SGI_ACL_FILE;
		break;
	case ACL_TYPE_DEFAULT:
		if (!FUNC0(inode->i_mode))
			return acl ? -EACCES : 0;
		ea_name = SGI_ACL_DEFAULT;
		break;
	default:
		return -EINVAL;
	}

	if (acl) {
		struct xfs_acl *xfs_acl;
		int len = FUNC2(ip->i_mount);

		xfs_acl = FUNC5(len, 0);
		if (!xfs_acl)
			return -ENOMEM;

		FUNC7(xfs_acl, acl);

		/* subtract away the unused acl entries */
		len -= sizeof(struct xfs_acl_entry) *
			 (FUNC1(ip->i_mount) - acl->a_count);

		error = FUNC9(ip, ea_name, (unsigned char *)xfs_acl,
				len, ATTR_ROOT);

		FUNC4(xfs_acl);
	} else {
		/*
		 * A NULL ACL argument means we want to remove the ACL.
		 */
		error = FUNC8(ip, ea_name, ATTR_ROOT);

		/*
		 * If the attribute didn't exist to start with that's fine.
		 */
		if (error == -ENOATTR)
			error = 0;
	}

	if (!error)
		FUNC6(inode, type, acl);
	return error;
}