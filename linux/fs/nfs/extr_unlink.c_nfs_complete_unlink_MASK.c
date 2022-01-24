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
struct nfs_unlinkdata {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_lock; struct nfs_unlinkdata* d_fsdata; int /*<<< orphan*/  d_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCACHE_NFSFS_RENAMED ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct inode*,struct nfs_unlinkdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_unlinkdata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct dentry *dentry, struct inode *inode)
{
	struct nfs_unlinkdata	*data;

	FUNC3(&dentry->d_lock);
	dentry->d_flags &= ~DCACHE_NFSFS_RENAMED;
	data = dentry->d_fsdata;
	dentry->d_fsdata = NULL;
	FUNC4(&dentry->d_lock);

	if (FUNC0(inode) || !FUNC1(dentry, inode, data))
		FUNC2(data);
}