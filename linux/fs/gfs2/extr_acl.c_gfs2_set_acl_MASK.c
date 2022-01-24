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
struct posix_acl {scalar_t__ a_count; } ;
struct inode {scalar_t__ i_mode; int /*<<< orphan*/  i_ctime; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;

/* Variables and functions */
 int ACL_TYPE_ACCESS ; 
 int E2BIG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct gfs2_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int FUNC3 (struct inode*,struct posix_acl*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int FUNC8 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int FUNC10 (struct inode*,scalar_t__*,struct posix_acl**) ; 

int FUNC11(struct inode *inode, struct posix_acl *acl, int type)
{
	struct gfs2_inode *ip = FUNC1(inode);
	struct gfs2_holder gh;
	bool need_unlock = false;
	int ret;
	umode_t mode;

	if (acl && acl->a_count > FUNC0(FUNC2(inode)))
		return -E2BIG;

	ret = FUNC8(ip);
	if (ret)
		return ret;

	if (!FUNC6(ip->i_gl)) {
		ret = FUNC7(ip->i_gl, LM_ST_EXCLUSIVE, 0, &gh);
		if (ret)
			return ret;
		need_unlock = true;
	}

	mode = inode->i_mode;
	if (type == ACL_TYPE_ACCESS && acl) {
		ret = FUNC10(inode, &mode, &acl);
		if (ret)
			goto unlock;
	}

	ret = FUNC3(inode, acl, type);
	if (!ret && mode != inode->i_mode) {
		inode->i_ctime = FUNC4(inode);
		inode->i_mode = mode;
		FUNC9(inode);
	}
unlock:
	if (need_unlock)
		FUNC5(&gh);
	return ret;
}