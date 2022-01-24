#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int i_opflags; TYPE_1__* i_op; } ;
struct dentry {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {size_t (* listxattr ) (struct dentry*,char*,size_t) ;} ;

/* Variables and functions */
 size_t ERANGE ; 
 int IOP_XATTR ; 
 struct inode* FUNC0 (struct dentry*) ; 
 size_t FUNC1 (struct inode*,char*,size_t) ; 
 size_t FUNC2 (struct dentry*) ; 
 size_t FUNC3 (struct dentry*,char*,size_t) ; 

ssize_t
FUNC4(struct dentry *dentry, char *list, size_t size)
{
	struct inode *inode = FUNC0(dentry);
	ssize_t error;

	error = FUNC2(dentry);
	if (error)
		return error;
	if (inode->i_op->listxattr && (inode->i_opflags & IOP_XATTR)) {
		error = inode->i_op->listxattr(dentry, list, size);
	} else {
		error = FUNC1(inode, list, size);
		if (size && error > size)
			error = -ERANGE;
	}
	return error;
}