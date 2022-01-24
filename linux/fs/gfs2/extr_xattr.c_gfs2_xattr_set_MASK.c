#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xattr_handler {int /*<<< orphan*/  flags; } ;
struct inode {int dummy; } ;
struct gfs2_inode {TYPE_1__* i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {scalar_t__ gl_state; } ;

/* Variables and functions */
 int EIO ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 scalar_t__ LM_ST_EXCLUSIVE ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct inode*,char const*,void const*,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 scalar_t__ FUNC6 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_holder*) ; 
 int FUNC8 (struct gfs2_inode*) ; 

__attribute__((used)) static int FUNC9(const struct xattr_handler *handler,
			  struct dentry *unused, struct inode *inode,
			  const char *name, const void *value,
			  size_t size, int flags)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_holder gh;
	int ret;

	ret = FUNC8(ip);
	if (ret)
		return ret;

	/* May be called from gfs_setattr with the glock locked. */

	if (!FUNC4(ip->i_gl)) {
		ret = FUNC5(ip->i_gl, LM_ST_EXCLUSIVE, 0, &gh);
		if (ret)
			return ret;
	} else {
		if (FUNC1(ip->i_gl->gl_state != LM_ST_EXCLUSIVE))
			return -EIO;
		FUNC7(&gh);
	}
	ret = FUNC2(inode, name, value, size, flags, handler->flags);
	if (FUNC6(&gh))
		FUNC3(&gh);
	return ret;
}