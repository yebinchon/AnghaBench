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
struct xattr_handler {int (* get ) (struct xattr_handler const*,struct dentry*,struct inode*,char const*,char*,int) ;} ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct xattr_handler const*) ; 
 int /*<<< orphan*/  MAY_READ ; 
 int FUNC1 (struct xattr_handler const*) ; 
 char* FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct xattr_handler const*,struct dentry*,struct inode*,char const*,char*,int) ; 
 int FUNC5 (struct xattr_handler const*,struct dentry*,struct inode*,char const*,char*,int) ; 
 int FUNC6 (struct inode*,char const*,int /*<<< orphan*/ ) ; 
 struct xattr_handler* FUNC7 (struct inode*,char const**) ; 

ssize_t
FUNC8(struct dentry *dentry, const char *name, char **xattr_value,
		   size_t xattr_size, gfp_t flags)
{
	const struct xattr_handler *handler;
	struct inode *inode = dentry->d_inode;
	char *value = *xattr_value;
	int error;

	error = FUNC6(inode, name, MAY_READ);
	if (error)
		return error;

	handler = FUNC7(inode, &name);
	if (FUNC0(handler))
		return FUNC1(handler);
	if (!handler->get)
		return -EOPNOTSUPP;
	error = handler->get(handler, dentry, inode, name, NULL, 0);
	if (error < 0)
		return error;

	if (!value || (error > xattr_size)) {
		value = FUNC2(*xattr_value, error + 1, flags);
		if (!value)
			return -ENOMEM;
		FUNC3(value, 0, error + 1);
	}

	error = handler->get(handler, dentry, inode, name, value, error);
	*xattr_value = value;
	return error;
}