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
struct xattr_handler {int (* set ) (struct xattr_handler const*,struct dentry*,struct inode*,char const*,void const*,size_t,int) ;} ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct xattr_handler const*) ; 
 int FUNC1 (struct xattr_handler const*) ; 
 int FUNC2 (struct xattr_handler const*,struct dentry*,struct inode*,char const*,void const*,size_t,int) ; 
 struct xattr_handler* FUNC3 (struct inode*,char const**) ; 

int
FUNC4(struct dentry *dentry, struct inode *inode, const char *name,
	       const void *value, size_t size, int flags)
{
	const struct xattr_handler *handler;

	handler = FUNC3(inode, &name);
	if (FUNC0(handler))
		return FUNC1(handler);
	if (!handler->set)
		return -EOPNOTSUPP;
	if (size == 0)
		value = "";  /* empty EA, do not remove */
	return handler->set(handler, dentry, inode, name, value, size, flags);
}