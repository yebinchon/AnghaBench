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
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int FUNC0 (struct inode*,int /*<<< orphan*/ *,struct posix_acl**,struct posix_acl**) ; 
 int /*<<< orphan*/  FUNC1 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ,struct posix_acl*) ; 

int FUNC3(struct inode *dir, struct inode *inode)
{
	struct posix_acl *default_acl, *acl;
	int error;

	error = FUNC0(dir, &inode->i_mode, &default_acl, &acl);
	if (error)
		return error;

	FUNC2(inode, ACL_TYPE_DEFAULT, default_acl);
	FUNC2(inode, ACL_TYPE_ACCESS, acl);

	if (default_acl)
		FUNC1(default_acl);
	if (acl)
		FUNC1(acl);
	return 0;
}