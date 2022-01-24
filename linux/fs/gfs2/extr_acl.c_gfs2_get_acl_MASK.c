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
struct inode {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;

/* Variables and functions */
 struct posix_acl* FUNC0 (int) ; 
 struct gfs2_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  LM_FLAG_ANY ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 struct posix_acl* FUNC2 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 

struct posix_acl *FUNC6(struct inode *inode, int type)
{
	struct gfs2_inode *ip = FUNC1(inode);
	struct gfs2_holder gh;
	bool need_unlock = false;
	struct posix_acl *acl;

	if (!FUNC4(ip->i_gl)) {
		int ret = FUNC5(ip->i_gl, LM_ST_SHARED,
					     LM_FLAG_ANY, &gh);
		if (ret)
			return FUNC0(ret);
		need_unlock = true;
	}
	acl = FUNC2(inode, type);
	if (need_unlock)
		FUNC3(&gh);
	return acl;
}