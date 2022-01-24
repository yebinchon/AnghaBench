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
struct xfs_acl {int dummy; } ;
struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 int ATTR_ALLOC ; 
 int ATTR_ROOT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOATTR ; 
 struct posix_acl* FUNC1 (int) ; 
 unsigned char* SGI_ACL_DEFAULT ; 
 unsigned char* SGI_ACL_FILE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct xfs_inode* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_acl*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_inode*) ; 
 struct posix_acl* FUNC7 (struct xfs_acl*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct xfs_inode*,unsigned char*,unsigned char**,int*,int) ; 

struct posix_acl *
FUNC9(struct inode *inode, int type)
{
	struct xfs_inode *ip = FUNC4(inode);
	struct posix_acl *acl = NULL;
	struct xfs_acl *xfs_acl = NULL;
	unsigned char *ea_name;
	int error;
	int len;

	FUNC6(ip);

	switch (type) {
	case ACL_TYPE_ACCESS:
		ea_name = SGI_ACL_FILE;
		break;
	case ACL_TYPE_DEFAULT:
		ea_name = SGI_ACL_DEFAULT;
		break;
	default:
		FUNC0();
	}

	/*
	 * If we have a cached ACLs value just return it, not need to
	 * go out to the disk.
	 */
	len = FUNC3(ip->i_mount);
	error = FUNC8(ip, ea_name, (unsigned char **)&xfs_acl, &len,
				ATTR_ALLOC | ATTR_ROOT);
	if (error) {
		/*
		 * If the attribute doesn't exist make sure we have a negative
		 * cache entry, for any other error assume it is transient.
		 */
		if (error != -ENOATTR)
			acl = FUNC1(error);
	} else  {
		acl = FUNC7(xfs_acl, len,
					FUNC2(ip->i_mount));
		FUNC5(xfs_acl);
	}
	return acl;
}