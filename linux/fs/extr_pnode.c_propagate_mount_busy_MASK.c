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
struct mount {int /*<<< orphan*/  mnt_mounts; int /*<<< orphan*/  mnt_mountpoint; int /*<<< orphan*/  mnt; struct mount* mnt_parent; } ;

/* Variables and functions */
 struct mount* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mount*,int) ; 
 struct mount* FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct mount* FUNC4 (struct mount*,struct mount*) ; 

int FUNC5(struct mount *mnt, int refcnt)
{
	struct mount *m, *child, *topper;
	struct mount *parent = mnt->mnt_parent;

	if (mnt == parent)
		return FUNC1(mnt, refcnt);

	/*
	 * quickly check if the current mount can be unmounted.
	 * If not, we don't have to go checking for all other
	 * mounts
	 */
	if (!FUNC3(&mnt->mnt_mounts) || FUNC1(mnt, refcnt))
		return 1;

	for (m = FUNC4(parent, parent); m;
	     		m = FUNC4(m, parent)) {
		int count = 1;
		child = FUNC0(&m->mnt, mnt->mnt_mountpoint);
		if (!child)
			continue;

		/* Is there exactly one mount on the child that covers
		 * it completely whose reference should be ignored?
		 */
		topper = FUNC2(child);
		if (topper)
			count += 1;
		else if (!FUNC3(&child->mnt_mounts))
			continue;

		if (FUNC1(child, count))
			return 1;
	}
	return 0;
}