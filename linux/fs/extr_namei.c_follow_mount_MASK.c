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
struct vfsmount {int /*<<< orphan*/  mnt_root; } ;
struct path {int /*<<< orphan*/  dentry; struct vfsmount* mnt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct vfsmount* FUNC3 (struct path*) ; 
 int /*<<< orphan*/  FUNC4 (struct vfsmount*) ; 

__attribute__((used)) static void FUNC5(struct path *path)
{
	while (FUNC0(path->dentry)) {
		struct vfsmount *mounted = FUNC3(path);
		if (!mounted)
			break;
		FUNC2(path->dentry);
		FUNC4(path->mnt);
		path->mnt = mounted;
		path->dentry = FUNC1(mounted->mnt_root);
	}
}