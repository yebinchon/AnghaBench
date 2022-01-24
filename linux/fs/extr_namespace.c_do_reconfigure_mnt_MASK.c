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
struct super_block {int /*<<< orphan*/  s_umount; } ;
struct path {scalar_t__ dentry; TYPE_1__* mnt; } ;
struct TYPE_4__ {scalar_t__ mnt_root; } ;
struct mount {TYPE_2__ mnt; } ;
struct TYPE_3__ {struct super_block* mnt_sb; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct mount*,unsigned int) ; 
 int FUNC1 (struct mount*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct path*,TYPE_2__*) ; 
 struct mount* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct mount*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct path *path, unsigned int mnt_flags)
{
	struct super_block *sb = path->mnt->mnt_sb;
	struct mount *mnt = FUNC5(path->mnt);
	int ret;

	if (!FUNC2(mnt))
		return -EINVAL;

	if (path->dentry != mnt->mnt.mnt_root)
		return -EINVAL;

	if (!FUNC0(mnt, mnt_flags))
		return -EPERM;

	FUNC3(&sb->s_umount);
	ret = FUNC1(mnt, mnt_flags);
	if (ret == 0)
		FUNC6(mnt, mnt_flags);
	FUNC7(&sb->s_umount);

	FUNC4(path, &mnt->mnt);

	return ret;
}