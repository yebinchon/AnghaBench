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
struct vfsmount {int mnt_flags; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 int MNT_DOOMED ; 
 int MNT_SYNC_UMOUNT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct mount*,int) ; 
 int /*<<< orphan*/  mount_lock ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 struct mount* FUNC4 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(struct vfsmount *bastard, unsigned seq)
{
	struct mount *mnt;
	if (FUNC3(&mount_lock, seq))
		return 1;
	if (bastard == NULL)
		return 0;
	mnt = FUNC4(bastard);
	FUNC2(mnt, 1);
	FUNC5();			// see mntput_no_expire()
	if (FUNC0(!FUNC3(&mount_lock, seq)))
		return 0;
	if (bastard->mnt_flags & MNT_SYNC_UMOUNT) {
		FUNC2(mnt, -1);
		return 1;
	}
	FUNC1();
	if (FUNC6(bastard->mnt_flags & MNT_DOOMED)) {
		FUNC2(mnt, -1);
		FUNC7();
		return 1;
	}
	FUNC7();
	/* caller will mntput() */
	return -1;
}