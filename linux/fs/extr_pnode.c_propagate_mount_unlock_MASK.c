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
struct TYPE_2__ {int /*<<< orphan*/  mnt_flags; } ;
struct mount {TYPE_1__ mnt; int /*<<< orphan*/  mnt_mountpoint; struct mount* mnt_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MNT_LOCKED ; 
 struct mount* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct mount* FUNC2 (struct mount*,struct mount*) ; 

void FUNC3(struct mount *mnt)
{
	struct mount *parent = mnt->mnt_parent;
	struct mount *m, *child;

	FUNC0(parent == mnt);

	for (m = FUNC2(parent, parent); m;
			m = FUNC2(m, parent)) {
		child = FUNC1(&m->mnt, mnt->mnt_mountpoint);
		if (child)
			child->mnt.mnt_flags &= ~MNT_LOCKED;
	}
}