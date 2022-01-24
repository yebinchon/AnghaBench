#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vfsmount {int dummy; } ;
struct path {int /*<<< orphan*/  dentry; int /*<<< orphan*/  mnt; } ;
struct mount {struct vfsmount mnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  CL_PRIVATE ; 
 int /*<<< orphan*/  EINVAL ; 
 struct vfsmount* FUNC0 (struct mount*) ; 
 struct vfsmount* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mount*) ; 
 scalar_t__ FUNC3 (struct mount*) ; 
 struct mount* FUNC4 (struct mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mount* FUNC5 (int /*<<< orphan*/ ) ; 

struct vfsmount *FUNC6(const struct path *path)
{
	struct mount *old_mnt = FUNC5(path->mnt);
	struct mount *new_mnt;

	if (FUNC3(old_mnt))
		return FUNC1(-EINVAL);

	new_mnt = FUNC4(old_mnt, path->dentry, CL_PRIVATE);
	if (FUNC2(new_mnt))
		return FUNC0(new_mnt);

	return &new_mnt->mnt;
}