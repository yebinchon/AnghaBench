#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct posix_acl {int dummy; } ;
struct inode {TYPE_2__* i_op; TYPE_1__* i_sb; int /*<<< orphan*/  i_mode; } ;
struct TYPE_4__ {int (* set_acl ) (struct inode*,struct posix_acl*,int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  s_user_ns; } ;

/* Variables and functions */
 int ACL_TYPE_DEFAULT ; 
 int EACCES ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct posix_acl*) ; 
 int FUNC4 (struct inode*,struct posix_acl*,int) ; 

int
FUNC5(struct inode *inode, int type, struct posix_acl *acl)
{
	if (!FUNC0(inode))
		return -EOPNOTSUPP;
	if (!inode->i_op->set_acl)
		return -EOPNOTSUPP;

	if (type == ACL_TYPE_DEFAULT && !FUNC1(inode->i_mode))
		return acl ? -EACCES : 0;
	if (!FUNC2(inode))
		return -EPERM;

	if (acl) {
		int ret = FUNC3(inode->i_sb->s_user_ns, acl);
		if (ret)
			return ret;
	}
	return inode->i_op->set_acl(inode, acl, type);
}