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
struct xattr_handler {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ,struct dentry*,size_t) ; 
 int FUNC1 (struct inode*,char const*,void*,size_t) ; 
 char* FUNC2 (struct xattr_handler const*,char const*) ; 

__attribute__((used)) static int FUNC3(const struct xattr_handler *handler,
			   struct dentry *dentry, struct inode *inode,
			   const char *name, void *buffer, size_t size)
{
	FUNC0("xattr '%s', ino %lu ('%pd'), buf size %zd", name,
		inode->i_ino, dentry, size);

	name = FUNC2(handler, name);
	return FUNC1(inode, name, buffer, size);
}