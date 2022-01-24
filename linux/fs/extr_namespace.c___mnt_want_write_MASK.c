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
struct vfsmount {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mnt_flags; } ;
struct mount {TYPE_1__ mnt; } ;

/* Variables and functions */
 int EROFS ; 
 int MNT_WRITE_HOLD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 scalar_t__ FUNC4 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct mount* FUNC7 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10(struct vfsmount *m)
{
	struct mount *mnt = FUNC7(m);
	int ret = 0;

	FUNC5();
	FUNC3(mnt);
	/*
	 * The store to mnt_inc_writers must be visible before we pass
	 * MNT_WRITE_HOLD loop below, so that the slowpath can see our
	 * incremented count after it has set MNT_WRITE_HOLD.
	 */
	FUNC8();
	while (FUNC0(mnt->mnt.mnt_flags) & MNT_WRITE_HOLD)
		FUNC1();
	/*
	 * After the slowpath clears MNT_WRITE_HOLD, mnt_is_readonly will
	 * be set to match its requirements. So we must not load that until
	 * MNT_WRITE_HOLD is cleared.
	 */
	FUNC9();
	if (FUNC4(m)) {
		FUNC2(mnt);
		ret = -EROFS;
	}
	FUNC6();

	return ret;
}