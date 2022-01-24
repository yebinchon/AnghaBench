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
struct vfsmount {int /*<<< orphan*/  mnt_sb; } ;
struct path {struct dentry* dentry; int /*<<< orphan*/  mnt; } ;
struct ns_common {int /*<<< orphan*/  stashed; TYPE_1__* ops; int /*<<< orphan*/  inum; } ;
struct inode {int i_mode; struct ns_common* i_private; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; } ;
struct dentry {void* d_fsdata; int /*<<< orphan*/  d_lockref; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* put ) (struct ns_common*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int S_IFREG ; 
 int /*<<< orphan*/  S_IMMUTABLE ; 
 int S_IRUGO ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct dentry* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct vfsmount*) ; 
 struct inode* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ns_file_operations ; 
 struct vfsmount* nsfs_mnt ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct ns_common*) ; 
 int /*<<< orphan*/  FUNC16 (struct ns_common*) ; 

__attribute__((used)) static void *FUNC17(struct path *path, struct ns_common *ns)
{
	struct vfsmount *mnt = nsfs_mnt;
	struct dentry *dentry;
	struct inode *inode;
	unsigned long d;

	FUNC13();
	d = FUNC2(&ns->stashed);
	if (!d)
		goto slow;
	dentry = (struct dentry *)d;
	if (!FUNC10(&dentry->d_lockref))
		goto slow;
	FUNC14();
	ns->ops->put(ns);
got_it:
	path->mnt = FUNC11(mnt);
	path->dentry = dentry;
	return NULL;
slow:
	FUNC14();
	inode = FUNC12(mnt->mnt_sb);
	if (!inode) {
		ns->ops->put(ns);
		return FUNC0(-ENOMEM);
	}
	inode->i_ino = ns->inum;
	inode->i_mtime = inode->i_atime = inode->i_ctime = FUNC4(inode);
	inode->i_flags |= S_IMMUTABLE;
	inode->i_mode = S_IFREG | S_IRUGO;
	inode->i_fop = &ns_file_operations;
	inode->i_private = ns;

	dentry = FUNC5(mnt->mnt_sb);
	if (!dentry) {
		FUNC9(inode);
		return FUNC0(-ENOMEM);
	}
	FUNC7(dentry, inode);
	dentry->d_fsdata = (void *)ns->ops;
	d = FUNC1(&ns->stashed, 0, (unsigned long)dentry);
	if (d) {
		FUNC6(dentry);	/* make sure ->d_prune() does nothing */
		FUNC8(dentry);
		FUNC3();
		return FUNC0(-EAGAIN);
	}
	goto got_it;
}