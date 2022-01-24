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
struct xfs_inode {int dummy; } ;
struct xattr_handler {int flags; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ATTR_KERNOVAL ; 
 struct xfs_inode* FUNC0 (struct inode*) ; 
 int FUNC1 (struct xfs_inode*,char const*,unsigned char**,int*,int) ; 

__attribute__((used)) static int
FUNC2(const struct xattr_handler *handler, struct dentry *unused,
		struct inode *inode, const char *name, void *value, size_t size)
{
	int xflags = handler->flags;
	struct xfs_inode *ip = FUNC0(inode);
	int error, asize = size;

	/* Convert Linux syscall to XFS internal ATTR flags */
	if (!size) {
		xflags |= ATTR_KERNOVAL;
		value = NULL;
	}

	error = FUNC1(ip, name, (unsigned char **)&value, &asize, xflags);
	if (error)
		return error;
	return asize;
}