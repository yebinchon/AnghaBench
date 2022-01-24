#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct dentry* dentry; TYPE_1__* mnt; } ;
struct nameidata {unsigned int seq; struct inode* inode; TYPE_2__ path; int /*<<< orphan*/  m_seq; int /*<<< orphan*/  root; } ;
struct TYPE_5__ {struct dentry* mnt_root; } ;
struct mount {TYPE_1__ mnt; struct dentry* mnt_mountpoint; struct mount* mnt_parent; } ;
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_seq; struct inode* d_inode; struct dentry* d_parent; } ;

/* Variables and functions */
 int ECHILD ; 
 int ENOENT ; 
 struct mount* FUNC0 (TYPE_1__*,struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  mount_lock ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mount* FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct nameidata *nd)
{
	struct inode *inode = nd->inode;

	while (1) {
		if (FUNC3(&nd->path, &nd->root))
			break;
		if (nd->path.dentry != nd->path.mnt->mnt_root) {
			struct dentry *old = nd->path.dentry;
			struct dentry *parent = old->d_parent;
			unsigned seq;

			inode = parent->d_inode;
			seq = FUNC4(&parent->d_seq);
			if (FUNC8(FUNC5(&old->d_seq, nd->seq)))
				return -ECHILD;
			nd->path.dentry = parent;
			nd->seq = seq;
			if (FUNC8(!FUNC2(&nd->path)))
				return -ENOENT;
			break;
		} else {
			struct mount *mnt = FUNC7(nd->path.mnt);
			struct mount *mparent = mnt->mnt_parent;
			struct dentry *mountpoint = mnt->mnt_mountpoint;
			struct inode *inode2 = mountpoint->d_inode;
			unsigned seq = FUNC4(&mountpoint->d_seq);
			if (FUNC8(FUNC6(&mount_lock, nd->m_seq)))
				return -ECHILD;
			if (&mparent->mnt == nd->path.mnt)
				break;
			/* we know that mountpoint was pinned */
			nd->path.dentry = mountpoint;
			nd->path.mnt = &mparent->mnt;
			inode = inode2;
			nd->seq = seq;
		}
	}
	while (FUNC8(FUNC1(nd->path.dentry))) {
		struct mount *mounted;
		mounted = FUNC0(nd->path.mnt, nd->path.dentry);
		if (FUNC8(FUNC6(&mount_lock, nd->m_seq)))
			return -ECHILD;
		if (!mounted)
			break;
		nd->path.mnt = &mounted->mnt;
		nd->path.dentry = mounted->mnt.mnt_root;
		inode = nd->path.dentry->d_inode;
		nd->seq = FUNC4(&nd->path.dentry->d_seq);
	}
	nd->inode = inode;
	return 0;
}