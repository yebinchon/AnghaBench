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
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip_xattr_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int OCFS2_MOUNT_POSIX_ACL ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct posix_acl*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct posix_acl**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct posix_acl* FUNC7 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct posix_acl*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct inode *inode, struct buffer_head *bh)
{
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	struct posix_acl *acl;
	int ret;

	if (FUNC4(inode->i_mode))
		return -EOPNOTSUPP;

	if (!(osb->s_mount_opt & OCFS2_MOUNT_POSIX_ACL))
		return 0;

	FUNC6(&FUNC1(inode)->ip_xattr_sem);
	acl = FUNC7(inode, ACL_TYPE_ACCESS, bh);
	FUNC10(&FUNC1(inode)->ip_xattr_sem);
	if (FUNC0(acl) || !acl)
		return FUNC3(acl);
	ret = FUNC5(&acl, GFP_KERNEL, inode->i_mode);
	if (ret)
		return ret;
	ret = FUNC8(NULL, inode, NULL, ACL_TYPE_ACCESS,
			    acl, NULL, NULL);
	FUNC9(acl);
	return ret;
}