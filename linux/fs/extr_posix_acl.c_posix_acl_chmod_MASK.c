#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
struct posix_acl {int dummy; } ;
struct inode {TYPE_1__* i_op; } ;
struct TYPE_2__ {int (* set_acl ) (struct inode*,struct posix_acl*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int EOPNOTSUPP ; 
 struct posix_acl* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct posix_acl*) ; 
 int FUNC4 (struct posix_acl**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct posix_acl*) ; 
 int FUNC7 (struct inode*,struct posix_acl*,int /*<<< orphan*/ ) ; 

int
FUNC8(struct inode *inode, umode_t mode)
{
	struct posix_acl *acl;
	int ret = 0;

	if (!FUNC2(inode))
		return 0;
	if (!inode->i_op->set_acl)
		return -EOPNOTSUPP;

	acl = FUNC5(inode, ACL_TYPE_ACCESS);
	if (FUNC1(acl)) {
		if (acl == FUNC0(-EOPNOTSUPP))
			return 0;
		return FUNC3(acl);
	}

	ret = FUNC4(&acl, GFP_KERNEL, mode);
	if (ret)
		return ret;
	ret = inode->i_op->set_acl(inode, acl, ACL_TYPE_ACCESS);
	FUNC6(acl);
	return ret;
}