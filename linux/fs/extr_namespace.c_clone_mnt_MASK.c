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
struct super_block {int /*<<< orphan*/  s_mounts; int /*<<< orphan*/  s_active; } ;
struct TYPE_2__ {int mnt_flags; int /*<<< orphan*/  mnt_root; struct super_block* mnt_sb; } ;
struct mount {int /*<<< orphan*/  mnt_expire; struct mount* mnt_master; int /*<<< orphan*/  mnt_slave; int /*<<< orphan*/  mnt_share; int /*<<< orphan*/  mnt_slave_list; int /*<<< orphan*/  mnt_instance; struct mount* mnt_parent; TYPE_1__ mnt; int /*<<< orphan*/  mnt_mountpoint; scalar_t__ mnt_group_id; int /*<<< orphan*/  mnt_devname; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mount*) ; 
 int CL_EXPIRE ; 
 int CL_MAKE_SHARED ; 
 int CL_PRIVATE ; 
 int CL_SHARED_TO_SLAVE ; 
 int CL_SLAVE ; 
 int ENOMEM ; 
 struct mount* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct mount*) ; 
 scalar_t__ FUNC3 (struct mount*) ; 
 int MNT_INTERNAL ; 
 int MNT_MARKED ; 
 int MNT_WRITE_HOLD ; 
 struct mount* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct mount*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (struct mount*) ; 
 int /*<<< orphan*/  FUNC13 (struct mount*) ; 
 int /*<<< orphan*/  FUNC14 (struct mount*) ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static struct mount *FUNC16(struct mount *old, struct dentry *root,
					int flag)
{
	struct super_block *sb = old->mnt.mnt_sb;
	struct mount *mnt;
	int err;

	mnt = FUNC4(old->mnt_devname);
	if (!mnt)
		return FUNC1(-ENOMEM);

	if (flag & (CL_SLAVE | CL_PRIVATE | CL_SHARED_TO_SLAVE))
		mnt->mnt_group_id = 0; /* not a peer of original */
	else
		mnt->mnt_group_id = old->mnt_group_id;

	if ((flag & CL_MAKE_SHARED) && !mnt->mnt_group_id) {
		err = FUNC12(mnt);
		if (err)
			goto out_free;
	}

	mnt->mnt.mnt_flags = old->mnt.mnt_flags;
	mnt->mnt.mnt_flags &= ~(MNT_WRITE_HOLD|MNT_MARKED|MNT_INTERNAL);

	FUNC5(&sb->s_active);
	mnt->mnt.mnt_sb = sb;
	mnt->mnt.mnt_root = FUNC6(root);
	mnt->mnt_mountpoint = mnt->mnt.mnt_root;
	mnt->mnt_parent = mnt;
	FUNC11();
	FUNC9(&mnt->mnt_instance, &sb->s_mounts);
	FUNC15();

	if ((flag & CL_SLAVE) ||
	    ((flag & CL_SHARED_TO_SLAVE) && FUNC2(old))) {
		FUNC8(&mnt->mnt_slave, &old->mnt_slave_list);
		mnt->mnt_master = old;
		FUNC0(mnt);
	} else if (!(flag & CL_PRIVATE)) {
		if ((flag & CL_MAKE_SHARED) || FUNC2(old))
			FUNC8(&mnt->mnt_share, &old->mnt_share);
		if (FUNC3(old))
			FUNC8(&mnt->mnt_slave, &old->mnt_slave);
		mnt->mnt_master = old->mnt_master;
	} else {
		FUNC0(mnt);
	}
	if (flag & CL_MAKE_SHARED)
		FUNC14(mnt);

	/* stick the duplicate mount on the same expiry list
	 * as the original if that was on one */
	if (flag & CL_EXPIRE) {
		if (!FUNC10(&old->mnt_expire))
			FUNC8(&mnt->mnt_expire, &old->mnt_expire);
	}

	return mnt;

 out_free:
	FUNC13(mnt);
	FUNC7(mnt);
	return FUNC1(err);
}