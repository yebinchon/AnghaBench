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
struct vfsmount {struct super_block* mnt_sb; int /*<<< orphan*/  mnt_root; } ;
struct super_block {int /*<<< orphan*/  s_umount; int /*<<< orphan*/  s_active; } ;
struct path {struct dentry* dentry; struct vfsmount* mnt; } ;
struct mount {int /*<<< orphan*/  mnt_list; struct mnt_namespace* mnt_ns; } ;
struct mnt_namespace {int /*<<< orphan*/  list; int /*<<< orphan*/  mounts; struct mount* root; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (struct mnt_namespace*) ; 
 struct dentry* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct mnt_namespace*) ; 
 int LOOKUP_AUTOMOUNT ; 
 int LOOKUP_FOLLOW ; 
 struct mnt_namespace* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC8 (struct mnt_namespace*) ; 
 struct mount* FUNC9 (struct vfsmount*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct vfsmount*,char const*,int,struct path*) ; 

struct dentry *FUNC11(struct vfsmount *m, const char *name)
{
	struct mount *mnt = FUNC9(m);
	struct mnt_namespace *ns;
	struct super_block *s;
	struct path path;
	int err;

	ns = FUNC3(&init_user_ns, true);
	if (FUNC2(ns)) {
		FUNC7(m);
		return FUNC0(ns);
	}
	mnt->mnt_ns = ns;
	ns->root = mnt;
	ns->mounts++;
	FUNC6(&mnt->mnt_list, &ns->list);

	err = FUNC10(m->mnt_root, m,
			name, LOOKUP_FOLLOW|LOOKUP_AUTOMOUNT, &path);

	FUNC8(ns);

	if (err)
		return FUNC1(err);

	/* trade a vfsmount reference for active sb one */
	s = path.mnt->mnt_sb;
	FUNC4(&s->s_active);
	FUNC7(path.mnt);
	/* lock the sucker */
	FUNC5(&s->s_umount);
	/* ... and return the root of (sub)tree on it */
	return path.dentry;
}