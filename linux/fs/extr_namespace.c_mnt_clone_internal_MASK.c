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
struct vfsmount {int /*<<< orphan*/  mnt_flags; } ;
struct path {int /*<<< orphan*/  dentry; int /*<<< orphan*/  mnt; } ;
struct mount {struct vfsmount mnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  CL_PRIVATE ; 
 struct vfsmount* FUNC0 (struct mount*) ; 
 scalar_t__ FUNC1 (struct mount*) ; 
 int /*<<< orphan*/  MNT_INTERNAL ; 
 struct mount* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

struct vfsmount *FUNC4(const struct path *path)
{
	struct mount *p;
	p = FUNC2(FUNC3(path->mnt), path->dentry, CL_PRIVATE);
	if (FUNC1(p))
		return FUNC0(p);
	p->mnt.mnt_flags |= MNT_INTERNAL;
	return &p->mnt;
}