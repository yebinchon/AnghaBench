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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct xfs_inode*) ; 
 struct xfs_inode* FUNC1 (struct inode*) ; 
 struct dentry* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 struct dentry* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct xfs_inode *
FUNC7(
	struct xfs_inode	*ip)
{
	struct inode		*inode = FUNC0(ip), *dir = NULL;
	struct dentry		*dentry, *parent;

	dentry = FUNC2(inode);
	if (!dentry)
		goto out;

	parent = FUNC4(dentry);
	if (!parent)
		goto out_dput;

	dir = FUNC6(FUNC3(parent));
	FUNC5(parent);

out_dput:
	FUNC5(dentry);
out:
	return dir ? FUNC1(dir) : NULL;
}