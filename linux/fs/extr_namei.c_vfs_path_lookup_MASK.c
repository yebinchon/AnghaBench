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
struct path {struct dentry* dentry; struct vfsmount* mnt; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FDCWD ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct path*,struct path*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

int FUNC2(struct dentry *dentry, struct vfsmount *mnt,
		    const char *name, unsigned int flags,
		    struct path *path)
{
	struct path root = {.mnt = mnt, .dentry = dentry};
	/* the first argument of filename_lookup() is ignored with root */
	return FUNC0(AT_FDCWD, FUNC1(name),
			       flags , path, &root);
}