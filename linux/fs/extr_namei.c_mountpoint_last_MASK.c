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
struct path {scalar_t__ dentry; int /*<<< orphan*/  mnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  mnt; struct dentry* dentry; } ;
struct nameidata {int flags; scalar_t__ last_type; TYPE_1__ path; int /*<<< orphan*/  last; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ECHILD ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ LAST_NORM ; 
 int LOOKUP_NO_REVAL ; 
 int LOOKUP_PARENT ; 
 int LOOKUP_RCU ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct dentry*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (struct nameidata*,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,struct dentry*,int) ; 
 int FUNC9 (struct nameidata*,struct path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct nameidata*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int
FUNC12(struct nameidata *nd)
{
	int error = 0;
	struct dentry *dir = nd->path.dentry;
	struct path path;

	/* If we're in rcuwalk, drop out of it to handle last component */
	if (nd->flags & LOOKUP_RCU) {
		if (FUNC10(nd))
			return -ECHILD;
	}

	nd->flags &= ~LOOKUP_PARENT;

	if (FUNC11(nd->last_type != LAST_NORM)) {
		error = FUNC7(nd, nd->last_type);
		if (error)
			return error;
		path.dentry = FUNC5(nd->path.dentry);
	} else {
		path.dentry = FUNC4(dir, &nd->last);
		if (!path.dentry) {
			/*
			 * No cached dentry. Mounted dentries are pinned in the
			 * cache, so that means that this dentry is probably
			 * a symlink or the path doesn't actually point
			 * to a mounted dentry.
			 */
			path.dentry = FUNC8(&nd->last, dir,
					     nd->flags | LOOKUP_NO_REVAL);
			if (FUNC0(path.dentry))
				return FUNC1(path.dentry);
		}
	}
	if (FUNC3(path.dentry)) {
		FUNC6(path.dentry);
		return -ENOENT;
	}
	path.mnt = nd->path.mnt;
	return FUNC9(nd, &path, 0, FUNC2(path.dentry), 0);
}