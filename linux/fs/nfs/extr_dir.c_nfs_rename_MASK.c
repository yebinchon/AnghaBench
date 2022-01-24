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
struct rpc_task {int tk_status; scalar_t__ tk_calldata; } ;
struct nfs_renamedata {int cancelled; } ;
struct inode {int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_mode; } ;
struct dentry {int /*<<< orphan*/  d_name; int /*<<< orphan*/  d_parent; } ;
struct TYPE_2__ {int cache_validity; int /*<<< orphan*/  attr_gencount; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int NFS_INO_INVALID_CHANGE ; 
 int NFS_INO_INVALID_CTIME ; 
 int NFS_INO_REVAL_FORCED ; 
 int FUNC2 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VFS ; 
 struct dentry* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 struct inode* FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,struct dentry*,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*) ; 
 struct rpc_task* FUNC13 (struct inode*,struct inode*,struct dentry*,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC20 (struct rpc_task*) ; 
 int FUNC21 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*,struct dentry*,struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*,struct dentry*,struct inode*,struct dentry*,int) ; 

int FUNC27(struct inode *old_dir, struct dentry *old_dentry,
	       struct inode *new_dir, struct dentry *new_dentry,
	       unsigned int flags)
{
	struct inode *old_inode = FUNC7(old_dentry);
	struct inode *new_inode = FUNC7(new_dentry);
	struct dentry *dentry = NULL, *rehash = NULL;
	struct rpc_task *task;
	int error = -EBUSY;

	if (flags)
		return -EINVAL;

	FUNC11(VFS, "NFS: rename(%pd2 -> %pd2, ct=%d)\n",
		 old_dentry, new_dentry,
		 FUNC5(new_dentry));

	FUNC25(old_dir, old_dentry, new_dir, new_dentry);
	/*
	 * For non-directories, check whether the target is busy and if so,
	 * make a copy of the dentry and then do a silly-rename. If the
	 * silly-rename succeeds, the copied dentry is hashed and becomes
	 * the new target.
	 */
	if (new_inode && !FUNC3(new_inode->i_mode)) {
		/*
		 * To prevent any new references to the target during the
		 * rename, we unhash the dentry in advance.
		 */
		if (!FUNC10(new_dentry)) {
			FUNC6(new_dentry);
			rehash = new_dentry;
		}

		if (FUNC5(new_dentry) > 2) {
			int err;

			/* copy the target dentry's name */
			dentry = FUNC4(new_dentry->d_parent,
					 &new_dentry->d_name);
			if (!dentry)
				goto out;

			/* silly-rename the existing target ... */
			err = FUNC19(new_dir, new_dentry);
			if (err)
				goto out;

			new_dentry = dentry;
			rehash = NULL;
			new_inode = NULL;
		}
	}

	task = FUNC13(old_dir, new_dir, old_dentry, new_dentry, NULL);
	if (FUNC0(task)) {
		error = FUNC2(task);
		goto out;
	}

	error = FUNC21(task);
	if (error != 0) {
		((struct nfs_renamedata *)task->tk_calldata)->cancelled = 1;
		/* Paired with the atomic_dec_and_test() barrier in rpc_do_put_task() */
		FUNC22();
	} else
		error = task->tk_status;
	FUNC20(task);
	/* Ensure the inode attributes are revalidated */
	if (error == 0) {
		FUNC23(&old_inode->i_lock);
		FUNC1(old_inode)->attr_gencount = FUNC16();
		FUNC1(old_inode)->cache_validity |= NFS_INO_INVALID_CHANGE
			| NFS_INO_INVALID_CTIME
			| NFS_INO_REVAL_FORCED;
		FUNC24(&old_inode->i_lock);
	}
out:
	if (rehash)
		FUNC9(rehash);
	FUNC26(old_dir, old_dentry,
			new_dir, new_dentry, error);
	if (!error) {
		if (new_inode != NULL)
			FUNC15(new_inode);
		/*
		 * The d_move() should be here instead of in an async RPC completion
		 * handler because we need the proper locks to move the dentry.  If
		 * we're interrupted by a signal, the async RPC completion handler
		 * should mark the directories for revalidation.
		 */
		FUNC8(old_dentry, new_dentry);
		FUNC18(old_dentry,
					FUNC17(new_dir));
	} else if (error == -ENOENT)
		FUNC14(old_dentry);

	/* new dentry created? */
	if (dentry)
		FUNC12(dentry);
	return error;
}