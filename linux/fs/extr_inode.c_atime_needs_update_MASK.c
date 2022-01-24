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
struct vfsmount {int mnt_flags; } ;
struct timespec64 {int dummy; } ;
struct path {struct vfsmount* mnt; } ;
struct inode {int i_flags; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mode; TYPE_1__* i_sb; } ;
struct TYPE_2__ {int s_flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int MNT_NOATIME ; 
 int MNT_NODIRATIME ; 
 int SB_NODIRATIME ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int S_NOATIME ; 
 struct timespec64 FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct vfsmount*,struct inode*,struct timespec64) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct timespec64*) ; 

bool FUNC6(const struct path *path, struct inode *inode)
{
	struct vfsmount *mnt = path->mnt;
	struct timespec64 now;

	if (inode->i_flags & S_NOATIME)
		return false;

	/* Atime updates will likely cause i_uid and i_gid to be written
	 * back improprely if their true value is unknown to the vfs.
	 */
	if (FUNC0(inode))
		return false;

	if (FUNC1(inode))
		return false;
	if ((inode->i_sb->s_flags & SB_NODIRATIME) && FUNC2(inode->i_mode))
		return false;

	if (mnt->mnt_flags & MNT_NOATIME)
		return false;
	if ((mnt->mnt_flags & MNT_NODIRATIME) && FUNC2(inode->i_mode))
		return false;

	now = FUNC3(inode);

	if (!FUNC4(mnt, inode, now))
		return false;

	if (FUNC5(&inode->i_atime, &now))
		return false;

	return true;
}