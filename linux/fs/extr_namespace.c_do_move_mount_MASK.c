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
struct path {scalar_t__ dentry; TYPE_1__* mnt; } ;
struct mountpoint {int dummy; } ;
struct TYPE_4__ {int mnt_flags; } ;
struct mount {int /*<<< orphan*/  mnt_expire; struct mount* mnt_parent; TYPE_2__ mnt; struct mnt_namespace* mnt_ns; struct mountpoint* mnt_mp; } ;
struct mnt_namespace {int dummy; } ;
struct TYPE_3__ {scalar_t__ mnt_root; } ;

/* Variables and functions */
 int EINVAL ; 
 int ELOOP ; 
 scalar_t__ FUNC0 (struct mountpoint*) ; 
 scalar_t__ FUNC1 (struct mount*) ; 
 int MNT_LOCKED ; 
 int FUNC2 (struct mountpoint*) ; 
 int FUNC3 (struct mount*,struct mount*,struct mountpoint*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*) ; 
 int /*<<< orphan*/  FUNC5 (struct mount*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct mnt_namespace*) ; 
 int /*<<< orphan*/  FUNC8 (struct mnt_namespace*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct mountpoint* FUNC11 (struct path*) ; 
 int FUNC12 (struct mount*) ; 
 int /*<<< orphan*/  FUNC13 (struct mount*) ; 
 int /*<<< orphan*/  FUNC14 (struct mountpoint*) ; 
 struct mount* FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (struct mount*) ; 
 int /*<<< orphan*/  FUNC17 (struct mountpoint*) ; 

__attribute__((used)) static int FUNC18(struct path *old_path, struct path *new_path)
{
	struct mnt_namespace *ns;
	struct mount *p;
	struct mount *old;
	struct mount *parent;
	struct mountpoint *mp, *old_mp;
	int err;
	bool attached;

	mp = FUNC11(new_path);
	if (FUNC0(mp))
		return FUNC2(mp);

	old = FUNC15(old_path->mnt);
	p = FUNC15(new_path->mnt);
	parent = old->mnt_parent;
	attached = FUNC12(old);
	old_mp = old->mnt_mp;
	ns = old->mnt_ns;

	err = -EINVAL;
	/* The mountpoint must be in our namespace. */
	if (!FUNC5(p))
		goto out;

	/* The thing moved must be mounted... */
	if (!FUNC9(&old->mnt))
		goto out;

	/* ... and either ours or the root of anon namespace */
	if (!(attached ? FUNC5(old) : FUNC8(ns)))
		goto out;

	if (old->mnt.mnt_flags & MNT_LOCKED)
		goto out;

	if (old_path->dentry != old_path->mnt->mnt_root)
		goto out;

	if (FUNC6(new_path->dentry) !=
	    FUNC6(old_path->dentry))
		goto out;
	/*
	 * Don't move a mount residing in a shared parent.
	 */
	if (attached && FUNC1(parent))
		goto out;
	/*
	 * Don't move a mount tree containing unbindable mounts to a destination
	 * mount which is shared.
	 */
	if (FUNC1(p) && FUNC16(old))
		goto out;
	err = -ELOOP;
	if (!FUNC4(old))
		goto out;
	for (; FUNC12(p); p = p->mnt_parent)
		if (p == old)
			goto out;

	err = FUNC3(old, FUNC15(new_path->mnt), mp,
				   attached);
	if (err)
		goto out;

	/* if the mount is moved, it should no longer be expire
	 * automatically */
	FUNC10(&old->mnt_expire);
	if (attached)
		FUNC14(old_mp);
out:
	FUNC17(mp);
	if (!err) {
		if (attached)
			FUNC13(parent);
		else
			FUNC7(ns);
	}
	return err;
}