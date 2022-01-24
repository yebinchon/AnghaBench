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
struct vfsmount {TYPE_1__* mnt_sb; int /*<<< orphan*/  mnt_root; int /*<<< orphan*/  mnt_flags; } ;
struct mount {struct vfsmount mnt; int /*<<< orphan*/  mnt_instance; struct mount* mnt_parent; int /*<<< orphan*/  mnt_mountpoint; } ;
struct fs_context {int sb_flags; TYPE_2__* root; scalar_t__ source; } ;
struct TYPE_4__ {TYPE_1__* d_sb; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_mounts; int /*<<< orphan*/  s_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct vfsmount* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MNT_INTERNAL ; 
 int SB_KERNMOUNT ; 
 struct mount* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

struct vfsmount *FUNC7(struct fs_context *fc)
{
	struct mount *mnt;

	if (!fc->root)
		return FUNC0(-EINVAL);

	mnt = FUNC1(fc->source ?: "none");
	if (!mnt)
		return FUNC0(-ENOMEM);

	if (fc->sb_flags & SB_KERNMOUNT)
		mnt->mnt.mnt_flags = MNT_INTERNAL;

	FUNC2(&fc->root->d_sb->s_active);
	mnt->mnt.mnt_sb		= fc->root->d_sb;
	mnt->mnt.mnt_root	= FUNC3(fc->root);
	mnt->mnt_mountpoint	= mnt->mnt.mnt_root;
	mnt->mnt_parent		= mnt;

	FUNC5();
	FUNC4(&mnt->mnt_instance, &mnt->mnt.mnt_sb->s_mounts);
	FUNC6();
	return &mnt->mnt;
}