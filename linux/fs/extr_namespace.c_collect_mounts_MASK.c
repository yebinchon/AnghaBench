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
 int CL_COPY_ALL ; 
 int CL_PRIVATE ; 
 int /*<<< orphan*/  EINVAL ; 
 struct vfsmount* FUNC0 (struct mount*) ; 
 struct mount* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mount*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct mount* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

struct vfsmount *FUNC8(const struct path *path)
{
	struct mount *tree;
	FUNC5();
	if (!FUNC3(FUNC7(path->mnt)))
		tree = FUNC1(-EINVAL);
	else
		tree = FUNC4(FUNC7(path->mnt), path->dentry,
				 CL_COPY_ALL | CL_PRIVATE);
	FUNC6();
	if (FUNC2(tree))
		return FUNC0(tree);
	return &tree->mnt;
}