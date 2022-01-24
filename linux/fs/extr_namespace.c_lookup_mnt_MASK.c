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
 struct mount* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vfsmount*,unsigned int) ; 
 int /*<<< orphan*/  mount_lock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 

struct vfsmount *FUNC5(const struct path *path)
{
	struct mount *child_mnt;
	struct vfsmount *m;
	unsigned seq;

	FUNC2();
	do {
		seq = FUNC4(&mount_lock);
		child_mnt = FUNC0(path->mnt, path->dentry);
		m = child_mnt ? &child_mnt->mnt : NULL;
	} while (!FUNC1(m, seq));
	FUNC3();
	return m;
}