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
 int /*<<< orphan*/  TOMOYO_TYPE_UMOUNT ; 
 int FUNC0 (int /*<<< orphan*/ ,struct path*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct vfsmount *mnt, int flags)
{
	struct path path = { .mnt = mnt, .dentry = mnt->mnt_root };

	return FUNC0(TOMOYO_TYPE_UMOUNT, &path, NULL);
}