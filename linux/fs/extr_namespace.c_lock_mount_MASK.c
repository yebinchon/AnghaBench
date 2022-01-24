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
struct path {struct dentry* dentry; struct vfsmount* mnt; } ;
struct mountpoint {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct mountpoint* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mountpoint*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (int /*<<< orphan*/ ) ; 
 struct mountpoint* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 struct vfsmount* FUNC8 (struct path*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct path*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mountpoint *FUNC13(struct path *path)
{
	struct vfsmount *mnt;
	struct dentry *dentry = path->dentry;
retry:
	FUNC5(dentry->d_inode);
	if (FUNC12(FUNC2(dentry))) {
		FUNC6(dentry->d_inode);
		return FUNC0(-ENOENT);
	}
	FUNC9();
	mnt = FUNC8(path);
	if (FUNC7(!mnt)) {
		struct mountpoint *mp = FUNC4(dentry);
		if (FUNC1(mp)) {
			FUNC10();
			FUNC6(dentry->d_inode);
			return mp;
		}
		return mp;
	}
	FUNC10();
	FUNC6(path->dentry->d_inode);
	FUNC11(path);
	path->mnt = mnt;
	dentry = path->dentry = FUNC3(mnt->mnt_root);
	goto retry;
}