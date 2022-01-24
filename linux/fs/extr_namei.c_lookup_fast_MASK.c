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
struct vfsmount {int dummy; } ;
struct path {struct dentry* dentry; struct vfsmount* mnt; } ;
struct TYPE_2__ {struct dentry* dentry; struct vfsmount* mnt; } ;
struct nameidata {int flags; int /*<<< orphan*/  last; int /*<<< orphan*/  seq; TYPE_1__ path; } ;
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_seq; } ;

/* Variables and functions */
 int ECHILD ; 
 int ENOENT ; 
 int LOOKUP_RCU ; 
 struct dentry* FUNC0 (struct dentry*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC1 (struct dentry*,int /*<<< orphan*/ *,unsigned int*) ; 
 int FUNC2 (struct nameidata*,struct path*,struct inode**,unsigned int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct inode* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int FUNC6 (struct dentry*) ; 
 int FUNC7 (struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int FUNC9 (struct path*,struct nameidata*) ; 
 scalar_t__ FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC12 (struct nameidata*,struct dentry*,unsigned int) ; 
 scalar_t__ FUNC13 (struct nameidata*) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct nameidata *nd,
		       struct path *path, struct inode **inode,
		       unsigned *seqp)
{
	struct vfsmount *mnt = nd->path.mnt;
	struct dentry *dentry, *parent = nd->path.dentry;
	int status = 1;
	int err;

	/*
	 * Rename seqlock is not required here because in the off chance
	 * of a false negative due to a concurrent rename, the caller is
	 * going to fall back to non-racy lookup.
	 */
	if (nd->flags & LOOKUP_RCU) {
		unsigned seq;
		bool negative;
		dentry = FUNC1(parent, &nd->last, &seq);
		if (FUNC14(!dentry)) {
			if (FUNC13(nd))
				return -ECHILD;
			return 0;
		}

		/*
		 * This sequence count validates that the inode matches
		 * the dentry name information from lookup.
		 */
		*inode = FUNC4(dentry);
		negative = FUNC6(dentry);
		if (FUNC14(FUNC11(&dentry->d_seq, seq)))
			return -ECHILD;

		/*
		 * This sequence count validates that the parent had no
		 * changes while we did the lookup of the dentry above.
		 *
		 * The memory barrier in read_seqcount_begin of child is
		 *  enough, we can use __read_seqcount_retry here.
		 */
		if (FUNC14(FUNC3(&parent->d_seq, nd->seq)))
			return -ECHILD;

		*seqp = seq;
		status = FUNC7(dentry, nd->flags);
		if (FUNC10(status > 0)) {
			/*
			 * Note: do negative dentry check after revalidation in
			 * case that drops it.
			 */
			if (FUNC14(negative))
				return -ENOENT;
			path->mnt = mnt;
			path->dentry = dentry;
			if (FUNC10(FUNC2(nd, path, inode, seqp)))
				return 1;
		}
		if (FUNC12(nd, dentry, seq))
			return -ECHILD;
		if (FUNC14(status == -ECHILD))
			/* we'd been told to redo it in non-rcu mode */
			status = FUNC7(dentry, nd->flags);
	} else {
		dentry = FUNC0(parent, &nd->last);
		if (FUNC14(!dentry))
			return 0;
		status = FUNC7(dentry, nd->flags);
	}
	if (FUNC14(status <= 0)) {
		if (!status)
			FUNC5(dentry);
		FUNC8(dentry);
		return status;
	}
	if (FUNC14(FUNC6(dentry))) {
		FUNC8(dentry);
		return -ENOENT;
	}

	path->mnt = mnt;
	path->dentry = dentry;
	err = FUNC9(path, nd);
	if (FUNC10(err > 0))
		*inode = FUNC4(path->dentry);
	return err;
}