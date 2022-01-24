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
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ *,struct posix_acl**) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int,struct posix_acl*) ; 

int FUNC3(struct inode *inode, struct posix_acl *acl, int type)
{
	int error;

	if (type == ACL_TYPE_ACCESS) {
		error = FUNC1(inode,
				&inode->i_mode, &acl);
		if (error)
			return error;
	}

	inode->i_ctime = FUNC0(inode);
	FUNC2(inode, type, acl);
	return 0;
}