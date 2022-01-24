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
struct xattr_handler {int (* set ) (struct xattr_handler const*,struct dentry*,struct inode*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct xattr_handler const*) ; 
 int FUNC1 (struct xattr_handler const*) ; 
 int /*<<< orphan*/  XATTR_REPLACE ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int FUNC3 (struct xattr_handler const*,struct dentry*,struct inode*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xattr_handler* FUNC4 (struct inode*,char const**) ; 

int
FUNC5(struct dentry *dentry, const char *name)
{
	struct inode *inode = FUNC2(dentry);
	const struct xattr_handler *handler;

	handler = FUNC4(inode, &name);
	if (FUNC0(handler))
		return FUNC1(handler);
	if (!handler->set)
		return -EOPNOTSUPP;
	return handler->set(handler, dentry, inode, name, NULL, 0, XATTR_REPLACE);
}