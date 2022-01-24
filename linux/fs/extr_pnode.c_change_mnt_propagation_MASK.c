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
struct mount {TYPE_1__ mnt; int /*<<< orphan*/ * mnt_master; int /*<<< orphan*/  mnt_slave; } ;

/* Variables and functions */
 int /*<<< orphan*/  MNT_UNBINDABLE ; 
 int MS_SHARED ; 
 int MS_SLAVE ; 
 int MS_UNBINDABLE ; 
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 

void FUNC3(struct mount *mnt, int type)
{
	if (type == MS_SHARED) {
		FUNC2(mnt);
		return;
	}
	FUNC0(mnt);
	if (type != MS_SLAVE) {
		FUNC1(&mnt->mnt_slave);
		mnt->mnt_master = NULL;
		if (type == MS_UNBINDABLE)
			mnt->mnt.mnt_flags |= MNT_UNBINDABLE;
		else
			mnt->mnt.mnt_flags &= ~MNT_UNBINDABLE;
	}
}