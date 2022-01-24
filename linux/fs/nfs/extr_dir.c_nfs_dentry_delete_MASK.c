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
struct dentry {int d_flags; TYPE_1__* d_sb; } ;
struct TYPE_2__ {int s_flags; } ;

/* Variables and functions */
 int DCACHE_NFSFS_RENAMED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int SB_ACTIVE ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC1 (struct dentry const*) ; 
 scalar_t__ FUNC2 (struct dentry const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct dentry const*,int) ; 

__attribute__((used)) static int FUNC4(const struct dentry *dentry)
{
	FUNC3(VFS, "NFS: dentry_delete(%pd2, %x)\n",
		dentry, dentry->d_flags);

	/* Unhash any dentry with a stale inode */
	if (FUNC2(dentry) && FUNC0(FUNC1(dentry)))
		return 1;

	if (dentry->d_flags & DCACHE_NFSFS_RENAMED) {
		/* Unhash it, so that ->d_iput() would be called */
		return 1;
	}
	if (!(dentry->d_sb->s_flags & SB_ACTIVE)) {
		/* Unhash it, so that ancestors of killed async unlink
		 * files will be cleaned up during umount */
		return 1;
	}
	return 0;

}