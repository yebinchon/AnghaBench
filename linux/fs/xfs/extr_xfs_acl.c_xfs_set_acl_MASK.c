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
struct posix_acl {scalar_t__ a_count; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int ACL_TYPE_ACCESS ; 
 int E2BIG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,struct posix_acl*,int) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ *,struct posix_acl**) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct inode *inode, struct posix_acl *acl, int type)
{
	umode_t mode;
	bool set_mode = false;
	int error = 0;

	if (!acl)
		goto set_acl;

	error = -E2BIG;
	if (acl->a_count > FUNC0(FUNC1(inode->i_sb)))
		return error;

	if (type == ACL_TYPE_ACCESS) {
		error = FUNC3(inode, &mode, &acl);
		if (error)
			return error;
		set_mode = true;
	}

 set_acl:
	error =  FUNC2(inode, acl, type);
	if (error)
		return error;

	/*
	 * We set the mode after successfully updating the ACL xattr because the
	 * xattr update can fail at ENOSPC and we don't want to change the mode
	 * if the ACL update hasn't been applied.
	 */
	if (set_mode)
		error = FUNC4(inode, mode);

	return error;
}