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
struct vfsmount {int dummy; } ;
struct super_block {int /*<<< orphan*/  s_umount; } ;
struct path {int dummy; } ;
struct fs_context {TYPE_1__* root; } ;
struct TYPE_2__ {struct super_block* d_sb; } ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ FUNC0 (struct vfsmount*) ; 
 int FUNC1 (struct vfsmount*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct path*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct fs_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct path*,struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC5 (struct vfsmount*) ; 
 scalar_t__ FUNC6 (struct super_block*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct vfsmount*) ; 
 int FUNC8 (struct super_block*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct vfsmount* FUNC11 (struct fs_context*) ; 

__attribute__((used)) static int FUNC12(struct fs_context *fc, struct path *mountpoint,
			   unsigned int mnt_flags)
{
	struct vfsmount *mnt;
	struct super_block *sb = fc->root->d_sb;
	int error;

	error = FUNC8(sb);
	if (!error && FUNC6(sb, &mnt_flags))
		error = -EPERM;

	if (FUNC9(error)) {
		FUNC3(fc);
		return error;
	}

	FUNC10(&sb->s_umount);

	mnt = FUNC11(fc);
	if (FUNC0(mnt))
		return FUNC1(mnt);

	error = FUNC2(FUNC7(mnt), mountpoint, mnt_flags);
	if (error < 0) {
		FUNC5(mnt);
		return error;
	}

	FUNC4(mountpoint, mnt);

	return error;
}