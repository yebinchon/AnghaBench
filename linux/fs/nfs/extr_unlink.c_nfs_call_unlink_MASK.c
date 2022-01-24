#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct nfs_unlinkdata {struct dentry* dentry; int /*<<< orphan*/  wq; TYPE_1__ args; } ;
struct inode {int dummy; } ;
struct dentry {int d_flags; int /*<<< orphan*/  d_lock; struct nfs_unlinkdata* d_fsdata; int /*<<< orphan*/  d_parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  rmdir_sem; } ;

/* Variables and functions */
 int DCACHE_NFSFS_RENAMED ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct nfs_unlinkdata*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct dentry *dentry, struct inode *inode, struct nfs_unlinkdata *data)
{
	struct inode *dir = FUNC4(dentry->d_parent);
	struct dentry *alias;

	FUNC6(&FUNC1(dir)->rmdir_sem);
	alias = FUNC2(dentry->d_parent, &data->args.name, &data->wq);
	if (FUNC0(alias)) {
		FUNC12(&FUNC1(dir)->rmdir_sem);
		return 0;
	}
	if (!FUNC3(alias)) {
		int ret;
		void *devname_garbage = NULL;

		/*
		 * Hey, we raced with lookup... See if we need to transfer
		 * the sillyrename information to the aliased dentry.
		 */
		FUNC10(&alias->d_lock);
		if (FUNC5(alias) &&
		    !(alias->d_flags & DCACHE_NFSFS_RENAMED)) {
			devname_garbage = alias->d_fsdata;
			alias->d_fsdata = data;
			alias->d_flags |= DCACHE_NFSFS_RENAMED;
			ret = 1;
		} else
			ret = 0;
		FUNC11(&alias->d_lock);
		FUNC7(alias);
		FUNC12(&FUNC1(dir)->rmdir_sem);
		/*
		 * If we'd displaced old cached devname, free it.  At that
		 * point dentry is definitely not a root, so we won't need
		 * that anymore.
		 */
		FUNC8(devname_garbage);
		return ret;
	}
	data->dentry = alias;
	FUNC9(inode, data);
	return 1;
}