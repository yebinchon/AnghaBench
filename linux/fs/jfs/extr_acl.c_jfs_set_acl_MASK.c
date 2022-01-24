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
typedef  scalar_t__ umode_t ;
typedef  int /*<<< orphan*/  tid_t ;
struct posix_acl {int dummy; } ;
struct inode {scalar_t__ i_mode; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/  commit_mutex; } ;

/* Variables and functions */
 int ACL_TYPE_ACCESS ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct inode*,int,struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct inode*,scalar_t__*,struct posix_acl**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,struct inode**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct inode *inode, struct posix_acl *acl, int type)
{
	int rc;
	tid_t tid;
	int update_mode = 0;
	umode_t mode = inode->i_mode;

	tid = FUNC7(inode->i_sb, 0);
	FUNC4(&FUNC0(inode)->commit_mutex);
	if (type == ACL_TYPE_ACCESS && acl) {
		rc = FUNC6(inode, &mode, &acl);
		if (rc)
			goto end_tx;
		if (mode != inode->i_mode)
			update_mode = 1;
	}
	rc = FUNC1(tid, inode, type, acl);
	if (!rc) {
		if (update_mode) {
			inode->i_mode = mode;
			inode->i_ctime = FUNC2(inode);
			FUNC3(inode);
		}
		rc = FUNC8(tid, 1, &inode, 0);
	}
end_tx:
	FUNC9(tid);
	FUNC5(&FUNC0(inode)->commit_mutex);
	return rc;
}