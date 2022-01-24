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
struct xattr_handler {int /*<<< orphan*/  flags; } ;
struct inode {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  LM_FLAG_ANY ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int FUNC1 (struct inode*,char const*,void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 scalar_t__ FUNC5 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_holder*) ; 

__attribute__((used)) static int FUNC7(const struct xattr_handler *handler,
			  struct dentry *unused, struct inode *inode,
			  const char *name, void *buffer, size_t size)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_holder gh;
	int ret;

	/* During lookup, SELinux calls this function with the glock locked. */

	if (!FUNC3(ip->i_gl)) {
		ret = FUNC4(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY, &gh);
		if (ret)
			return ret;
	} else {
		FUNC6(&gh);
	}
	ret = FUNC1(inode, name, buffer, size, handler->flags);
	if (FUNC5(&gh))
		FUNC2(&gh);
	return ret;
}