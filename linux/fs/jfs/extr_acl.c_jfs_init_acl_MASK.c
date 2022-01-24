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
typedef  int /*<<< orphan*/  tid_t ;
struct posix_acl {int dummy; } ;
struct inode {int i_mode; int /*<<< orphan*/ * i_acl; int /*<<< orphan*/ * i_default_acl; } ;
struct TYPE_2__ {int mode2; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ,struct posix_acl*) ; 
 int FUNC2 (struct inode*,int*,struct posix_acl**,struct posix_acl**) ; 
 int /*<<< orphan*/  FUNC3 (struct posix_acl*) ; 

int FUNC4(tid_t tid, struct inode *inode, struct inode *dir)
{
	struct posix_acl *default_acl, *acl;
	int rc = 0;

	rc = FUNC2(dir, &inode->i_mode, &default_acl, &acl);
	if (rc)
		return rc;

	if (default_acl) {
		rc = FUNC1(tid, inode, ACL_TYPE_DEFAULT, default_acl);
		FUNC3(default_acl);
	} else {
		inode->i_default_acl = NULL;
	}

	if (acl) {
		if (!rc)
			rc = FUNC1(tid, inode, ACL_TYPE_ACCESS, acl);
		FUNC3(acl);
	} else {
		inode->i_acl = NULL;
	}

	FUNC0(inode)->mode2 = (FUNC0(inode)->mode2 & 0xffff0000) |
			       inode->i_mode;

	return rc;
}