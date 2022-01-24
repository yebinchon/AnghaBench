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
struct xattr_handler {int /*<<< orphan*/  (* get ) (struct xattr_handler const*,struct dentry*,struct inode*,char const*,void*,size_t) ;} ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct xattr_handler const*) ; 
 int /*<<< orphan*/  FUNC1 (struct xattr_handler const*) ; 
 int /*<<< orphan*/  FUNC2 (struct xattr_handler const*,struct dentry*,struct inode*,char const*,void*,size_t) ; 
 struct xattr_handler* FUNC3 (struct inode*,char const**) ; 

ssize_t
FUNC4(struct dentry *dentry, struct inode *inode, const char *name,
	       void *value, size_t size)
{
	const struct xattr_handler *handler;

	handler = FUNC3(inode, &name);
	if (FUNC0(handler))
		return FUNC1(handler);
	if (!handler->get)
		return -EOPNOTSUPP;
	return handler->get(handler, dentry, inode, name, value, size);
}