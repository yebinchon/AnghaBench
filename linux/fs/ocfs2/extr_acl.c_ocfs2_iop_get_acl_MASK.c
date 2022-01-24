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
struct posix_acl {int dummy; } ;
struct ocfs2_super {int s_mount_opt; } ;
struct ocfs2_lock_holder {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip_xattr_sem; } ;

/* Variables and functions */
 struct posix_acl* FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int OCFS2_MOUNT_POSIX_ACL ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct posix_acl* FUNC5 (struct inode*,int,struct buffer_head*) ; 
 int FUNC6 (struct inode*,struct buffer_head**,int /*<<< orphan*/ ,struct ocfs2_lock_holder*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ,struct ocfs2_lock_holder*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct posix_acl *FUNC9(struct inode *inode, int type)
{
	struct ocfs2_super *osb;
	struct buffer_head *di_bh = NULL;
	struct posix_acl *acl;
	int had_lock;
	struct ocfs2_lock_holder oh;

	osb = FUNC2(inode->i_sb);
	if (!(osb->s_mount_opt & OCFS2_MOUNT_POSIX_ACL))
		return NULL;

	had_lock = FUNC6(inode, &di_bh, 0, &oh);
	if (had_lock < 0)
		return FUNC0(had_lock);

	FUNC4(&FUNC1(inode)->ip_xattr_sem);
	acl = FUNC5(inode, type, di_bh);
	FUNC8(&FUNC1(inode)->ip_xattr_sem);

	FUNC7(inode, 0, &oh, had_lock);
	FUNC3(di_bh);
	return acl;
}