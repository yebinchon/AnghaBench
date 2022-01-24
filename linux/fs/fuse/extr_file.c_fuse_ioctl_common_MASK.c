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
struct inode {int dummy; } ;
struct fuse_conn {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 long EACCES ; 
 long EIO ; 
 struct inode* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_conn*) ; 
 long FUNC2 (struct file*,unsigned int,unsigned long,unsigned int) ; 
 struct fuse_conn* FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 

long FUNC5(struct file *file, unsigned int cmd,
		       unsigned long arg, unsigned int flags)
{
	struct inode *inode = FUNC0(file);
	struct fuse_conn *fc = FUNC3(inode);

	if (!FUNC1(fc))
		return -EACCES;

	if (FUNC4(inode))
		return -EIO;

	return FUNC2(file, cmd, arg, flags);
}