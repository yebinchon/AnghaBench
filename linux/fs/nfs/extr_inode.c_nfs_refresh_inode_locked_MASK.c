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
struct inode {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct inode*,struct nfs_fattr*) ; 
 scalar_t__ FUNC1 (struct inode*,struct nfs_fattr*) ; 
 int FUNC2 (struct inode*,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct nfs_fattr *fattr)
{
	int ret;

	FUNC3(inode);

	if (FUNC1(inode, fattr))
		ret = FUNC2(inode, fattr);
	else
		ret = FUNC0(inode, fattr);

	FUNC4(inode, ret);
	return ret;
}