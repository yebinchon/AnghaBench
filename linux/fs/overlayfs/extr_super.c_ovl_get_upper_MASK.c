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
struct vfsmount {int mnt_flags; int /*<<< orphan*/  mnt_root; } ;
struct super_block {int dummy; } ;
struct path {int /*<<< orphan*/  dentry; TYPE_1__* mnt; } ;
struct TYPE_4__ {int /*<<< orphan*/  upperdir; } ;
struct ovl_fs {int upperdir_locked; struct vfsmount* upper_mnt; int /*<<< orphan*/  upperdir_trap; TYPE_2__ config; } ;
struct TYPE_3__ {int /*<<< orphan*/  mnt_sb; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct vfsmount*) ; 
 int MNT_NOATIME ; 
 int MNT_NODIRATIME ; 
 int MNT_RELATIME ; 
 int FUNC1 (struct vfsmount*) ; 
 struct vfsmount* FUNC2 (struct path*) ; 
 int FUNC3 (struct path*,struct ovl_fs*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct path*) ; 
 int FUNC6 (struct ovl_fs*,char*) ; 
 int FUNC7 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct super_block *sb, struct ovl_fs *ofs,
			 struct path *upperpath)
{
	struct vfsmount *upper_mnt;
	int err;

	err = FUNC5(ofs->config.upperdir, upperpath);
	if (err)
		goto out;

	/* Upper fs should not be r/o */
	if (FUNC9(upperpath->mnt->mnt_sb)) {
		FUNC8("overlayfs: upper fs is r/o, try multi-lower layers mount\n");
		err = -EINVAL;
		goto out;
	}

	err = FUNC3(upperpath, ofs, ofs->config.upperdir);
	if (err)
		goto out;

	err = FUNC7(sb, upperpath->dentry, &ofs->upperdir_trap,
			     "upperdir");
	if (err)
		goto out;

	upper_mnt = FUNC2(upperpath);
	err = FUNC1(upper_mnt);
	if (FUNC0(upper_mnt)) {
		FUNC8("overlayfs: failed to clone upperpath\n");
		goto out;
	}

	/* Don't inherit atime flags */
	upper_mnt->mnt_flags &= ~(MNT_NOATIME | MNT_NODIRATIME | MNT_RELATIME);
	ofs->upper_mnt = upper_mnt;

	if (FUNC4(ofs->upper_mnt->mnt_root)) {
		ofs->upperdir_locked = true;
	} else {
		err = FUNC6(ofs, "upperdir");
		if (err)
			goto out;
	}

	err = 0;
out:
	return err;
}