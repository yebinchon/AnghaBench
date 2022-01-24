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
typedef  scalar_t__ umode_t ;
struct posix_acl {int /*<<< orphan*/  a_count; } ;
struct inode {scalar_t__ i_mode; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ctime; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int ACL_TYPE_ACCESS ; 
 int ENOSPC ; 
 int /*<<< orphan*/  EXT4_HT_XATTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct inode*,int,struct posix_acl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int*) ; 
 int FUNC10 (struct inode*,size_t,int,int*) ; 
 int FUNC11 (struct inode*,scalar_t__*,struct posix_acl**) ; 

int
FUNC12(struct inode *inode, struct posix_acl *acl, int type)
{
	handle_t *handle;
	int error, credits, retries = 0;
	size_t acl_size = acl ? FUNC5(acl->a_count) : 0;
	umode_t mode = inode->i_mode;
	int update_mode = 0;

	error = FUNC4(inode);
	if (error)
		return error;
retry:
	error = FUNC10(inode, acl_size, false /* is_create */,
				       &credits);
	if (error)
		return error;

	handle = FUNC6(inode, EXT4_HT_XATTR, credits);
	if (FUNC0(handle))
		return FUNC1(handle);

	if ((type == ACL_TYPE_ACCESS) && acl) {
		error = FUNC11(inode, &mode, &acl);
		if (error)
			goto out_stop;
		if (mode != inode->i_mode)
			update_mode = 1;
	}

	error = FUNC2(handle, inode, type, acl, 0 /* xattr_flags */);
	if (!error && update_mode) {
		inode->i_mode = mode;
		inode->i_ctime = FUNC3(inode);
		FUNC8(handle, inode);
	}
out_stop:
	FUNC7(handle);
	if (error == -ENOSPC && FUNC9(inode->i_sb, &retries))
		goto retry;
	return error;
}