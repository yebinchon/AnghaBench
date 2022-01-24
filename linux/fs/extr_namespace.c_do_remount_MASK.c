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
struct super_block {int /*<<< orphan*/  s_umount; int /*<<< orphan*/  s_user_ns; } ;
struct path {scalar_t__ dentry; TYPE_1__* mnt; } ;
struct mount {int /*<<< orphan*/  mnt; } ;
struct fs_context {int dummy; } ;
struct TYPE_2__ {scalar_t__ mnt_root; struct super_block* mnt_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct fs_context*) ; 
 int /*<<< orphan*/  MS_RMT_MASK ; 
 int FUNC1 (struct fs_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct fs_context* FUNC5 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct path*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct fs_context*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct fs_context*) ; 
 struct mount* FUNC10 (TYPE_1__*) ; 
 int FUNC11 (struct fs_context*) ; 
 int /*<<< orphan*/  FUNC12 (struct mount*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct path *path, int ms_flags, int sb_flags,
		      int mnt_flags, void *data)
{
	int err;
	struct super_block *sb = path->mnt->mnt_sb;
	struct mount *mnt = FUNC10(path->mnt);
	struct fs_context *fc;

	if (!FUNC3(mnt))
		return -EINVAL;

	if (path->dentry != path->mnt->mnt_root)
		return -EINVAL;

	if (!FUNC2(mnt, mnt_flags))
		return -EPERM;

	fc = FUNC5(path->dentry, sb_flags, MS_RMT_MASK);
	if (FUNC0(fc))
		return FUNC1(fc);

	err = FUNC8(fc, data);
	if (!err) {
		FUNC4(&sb->s_umount);
		err = -EPERM;
		if (FUNC7(sb->s_user_ns, CAP_SYS_ADMIN)) {
			err = FUNC11(fc);
			if (!err)
				FUNC12(mnt, mnt_flags);
		}
		FUNC13(&sb->s_umount);
	}

	FUNC6(path, &mnt->mnt);

	FUNC9(fc);
	return err;
}