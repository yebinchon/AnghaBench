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
struct vfsmount {int dummy; } ;
struct timespec64 {int dummy; } ;
struct path {int /*<<< orphan*/  dentry; struct vfsmount* mnt; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_ATIME ; 
 int /*<<< orphan*/  FUNC0 (struct vfsmount*) ; 
 scalar_t__ FUNC1 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC2 (struct path const*,struct inode*) ; 
 struct timespec64 FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct timespec64*,int /*<<< orphan*/ ) ; 

void FUNC8(const struct path *path)
{
	struct vfsmount *mnt = path->mnt;
	struct inode *inode = FUNC4(path->dentry);
	struct timespec64 now;

	if (!FUNC2(path, inode))
		return;

	if (!FUNC6(inode->i_sb))
		return;

	if (FUNC1(mnt) != 0)
		goto skip_update;
	/*
	 * File systems can error out when updating inodes if they need to
	 * allocate new space to modify an inode (such is the case for
	 * Btrfs), but since we touch atime while walking down the path we
	 * really don't care if we failed to update the atime of the file,
	 * so just ignore the return value.
	 * We may also fail on filesystems that have the ability to make parts
	 * of the fs read only, e.g. subvolumes in Btrfs.
	 */
	now = FUNC3(inode);
	FUNC7(inode, &now, S_ATIME);
	FUNC0(mnt);
skip_update:
	FUNC5(inode->i_sb);
}