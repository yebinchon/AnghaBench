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
struct posix_acl {int dummy; } ;
struct ocfs2_lock_holder {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int FUNC1 (struct inode*,struct buffer_head*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,struct buffer_head**,int,struct ocfs2_lock_holder*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int,struct ocfs2_lock_holder*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,int,struct posix_acl*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ *,struct posix_acl**) ; 

int FUNC6(struct inode *inode, struct posix_acl *acl, int type)
{
	struct buffer_head *bh = NULL;
	int status, had_lock;
	struct ocfs2_lock_holder oh;

	had_lock = FUNC2(inode, &bh, 1, &oh);
	if (had_lock < 0)
		return had_lock;
	if (type == ACL_TYPE_ACCESS && acl) {
		umode_t mode;

		status = FUNC5(inode, &mode, &acl);
		if (status)
			goto unlock;

		status = FUNC1(inode, bh, NULL, mode);
		if (status)
			goto unlock;
	}
	status = FUNC4(NULL, inode, bh, type, acl, NULL, NULL);
unlock:
	FUNC3(inode, 1, &oh, had_lock);
	FUNC0(bh);
	return status;
}