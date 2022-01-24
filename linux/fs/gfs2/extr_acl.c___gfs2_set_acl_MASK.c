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
struct posix_acl {int /*<<< orphan*/  a_count; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  GFS2_EATYPE_SYS ; 
 int FUNC0 (struct inode*,char const*,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct posix_acl*,char*,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int,struct posix_acl*) ; 

int FUNC7(struct inode *inode, struct posix_acl *acl, int type)
{
	int error;
	size_t len;
	char *data;
	const char *name = FUNC1(type);

	if (acl) {
		len = FUNC5(acl->a_count);
		data = FUNC3(len, GFP_NOFS);
		if (data == NULL)
			return -ENOMEM;
		error = FUNC4(&init_user_ns, acl, data, len);
		if (error < 0)
			goto out;
	} else {
		data = NULL;
		len = 0;
	}

	error = FUNC0(inode, name, data, len, 0, GFS2_EATYPE_SYS);
	if (error)
		goto out;
	FUNC6(inode, type, acl);
out:
	FUNC2(data);
	return error;
}