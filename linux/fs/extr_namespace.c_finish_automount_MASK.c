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
struct vfsmount {scalar_t__ mnt_sb; scalar_t__ mnt_root; } ;
struct path {scalar_t__ dentry; TYPE_1__* mnt; } ;
struct mount {int /*<<< orphan*/  mnt_expire; } ;
struct TYPE_2__ {scalar_t__ mnt_sb; int mnt_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ELOOP ; 
 int MNT_SHRINKABLE ; 
 int FUNC1 (struct mount*,struct path*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mount*) ; 
 int /*<<< orphan*/  FUNC5 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct mount* FUNC8 (struct vfsmount*) ; 

int FUNC9(struct vfsmount *m, struct path *path)
{
	struct mount *mnt = FUNC8(m);
	int err;
	/* The new mount record should have at least 2 refs to prevent it being
	 * expired before we get a chance to add it
	 */
	FUNC0(FUNC4(mnt) < 2);

	if (m->mnt_sb == path->mnt->mnt_sb &&
	    m->mnt_root == path->dentry) {
		err = -ELOOP;
		goto fail;
	}

	err = FUNC1(mnt, path, path->mnt->mnt_flags | MNT_SHRINKABLE);
	if (!err)
		return 0;
fail:
	/* remove m from any expiration list it may be on */
	if (!FUNC3(&mnt->mnt_expire)) {
		FUNC6();
		FUNC2(&mnt->mnt_expire);
		FUNC7();
	}
	FUNC5(m);
	FUNC5(m);
	return err;
}