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
struct iattr {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct xfs_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_inode*) ; 
 int FUNC3 (struct xfs_inode*,struct iattr*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dentry*,struct iattr*) ; 

int
FUNC5(
	struct dentry		*dentry,
	struct iattr		*iattr)
{
	struct xfs_inode	*ip = FUNC0(FUNC1(dentry));
	int error;

	FUNC2(ip);

	error = FUNC4(dentry, iattr);
	if (error)
		return error;
	return FUNC3(ip, iattr, 0);
}