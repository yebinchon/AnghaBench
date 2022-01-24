#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct path {TYPE_2__* dentry; int /*<<< orphan*/  mnt; } ;
struct TYPE_5__ {int /*<<< orphan*/  mnt_flags; } ;
struct mount {TYPE_1__ mnt; } ;
struct TYPE_6__ {int /*<<< orphan*/ * d_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  CL_COPY_MNT_NS_FILE ; 
 int /*<<< orphan*/  EINVAL ; 
 struct mount* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mount*) ; 
 scalar_t__ FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  MNT_LOCKED ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 struct mount* FUNC4 (struct mount*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct mount* FUNC5 (struct mount*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct mount*,TYPE_2__*) ; 
 int /*<<< orphan*/  ns_dentry_operations ; 
 struct mount* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mount *FUNC8(struct path *old_path, int recurse)
{
	struct mount *mnt = FUNC0(-EINVAL), *old = FUNC7(old_path->mnt);

	if (FUNC2(old))
		return mnt;

	if (!FUNC3(old) && old_path->dentry->d_op != &ns_dentry_operations)
		return mnt;

	if (!recurse && FUNC6(old, old_path->dentry))
		return mnt;

	if (recurse)
		mnt = FUNC5(old, old_path->dentry, CL_COPY_MNT_NS_FILE);
	else
		mnt = FUNC4(old, old_path->dentry, 0);

	if (!FUNC1(mnt))
		mnt->mnt.mnt_flags &= ~MNT_LOCKED;

	return mnt;
}