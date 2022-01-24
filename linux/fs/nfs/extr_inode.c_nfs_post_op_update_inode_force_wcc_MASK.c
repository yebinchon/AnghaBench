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
struct nfs_fattr {int dummy; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_fattr*) ; 
 int FUNC1 (struct inode*,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct inode *inode, struct nfs_fattr *fattr)
{
	int status;

	FUNC2(&inode->i_lock);
	FUNC0(fattr);
	status = FUNC1(inode, fattr);
	FUNC3(&inode->i_lock);
	return status;
}