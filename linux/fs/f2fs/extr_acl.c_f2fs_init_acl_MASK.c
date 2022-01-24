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
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/ * i_acl; int /*<<< orphan*/ * i_default_acl; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int FUNC0 (struct inode*,int /*<<< orphan*/ ,struct posix_acl*,struct page*) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ *,struct posix_acl**,struct posix_acl**,struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct posix_acl*) ; 

int FUNC4(struct inode *inode, struct inode *dir, struct page *ipage,
							struct page *dpage)
{
	struct posix_acl *default_acl = NULL, *acl = NULL;
	int error = 0;

	error = FUNC1(dir, &inode->i_mode, &default_acl, &acl, dpage);
	if (error)
		return error;

	FUNC2(inode, true);

	if (default_acl) {
		error = FUNC0(inode, ACL_TYPE_DEFAULT, default_acl,
				       ipage);
		FUNC3(default_acl);
	} else {
		inode->i_default_acl = NULL;
	}
	if (acl) {
		if (!error)
			error = FUNC0(inode, ACL_TYPE_ACCESS, acl,
					       ipage);
		FUNC3(acl);
	} else {
		inode->i_acl = NULL;
	}

	return error;
}