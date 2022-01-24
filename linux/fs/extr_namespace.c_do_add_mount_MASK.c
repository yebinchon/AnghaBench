#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct path {scalar_t__ dentry; TYPE_2__* mnt; } ;
struct mountpoint {int dummy; } ;
struct TYPE_3__ {scalar_t__ mnt_sb; int mnt_flags; int /*<<< orphan*/  mnt_root; } ;
struct mount {TYPE_1__ mnt; int /*<<< orphan*/  mnt_ns; } ;
struct TYPE_4__ {scalar_t__ mnt_sb; scalar_t__ mnt_root; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct mountpoint*) ; 
 int MNT_INTERNAL_FLAGS ; 
 int MNT_SHRINKABLE ; 
 int FUNC1 (struct mountpoint*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mount*,struct mount*,struct mountpoint*) ; 
 struct mountpoint* FUNC5 (struct path*) ; 
 struct mount* FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct mountpoint*) ; 

__attribute__((used)) static int FUNC9(struct mount *newmnt, struct path *path, int mnt_flags)
{
	struct mountpoint *mp;
	struct mount *parent;
	int err;

	mnt_flags &= ~MNT_INTERNAL_FLAGS;

	mp = FUNC5(path);
	if (FUNC0(mp))
		return FUNC1(mp);

	parent = FUNC6(path->mnt);
	err = -EINVAL;
	if (FUNC7(!FUNC2(parent))) {
		/* that's acceptable only for automounts done in private ns */
		if (!(mnt_flags & MNT_SHRINKABLE))
			goto unlock;
		/* ... and for those we'd better have mountpoint still alive */
		if (!parent->mnt_ns)
			goto unlock;
	}

	/* Refuse the same filesystem on the same mount point */
	err = -EBUSY;
	if (path->mnt->mnt_sb == newmnt->mnt.mnt_sb &&
	    path->mnt->mnt_root == path->dentry)
		goto unlock;

	err = -EINVAL;
	if (FUNC3(newmnt->mnt.mnt_root))
		goto unlock;

	newmnt->mnt.mnt_flags = mnt_flags;
	err = FUNC4(newmnt, parent, mp);

unlock:
	FUNC8(mp);
	return err;
}