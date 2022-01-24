#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_5__ {int /*<<< orphan*/  l_name; } ;
struct ocfs2_dentry_lock {scalar_t__ dl_parent_blkno; int dl_count; TYPE_2__ dl_lockres; struct inode* dl_inode; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {struct ocfs2_dentry_lock* d_fsdata; TYPE_1__ d_name; } ;
struct TYPE_6__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  dentry_attach_lock ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 struct inode* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_dentry_lock*) ; 
 struct ocfs2_dentry_lock* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_dentry_lock*,scalar_t__,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC13 (struct inode*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long,struct ocfs2_dentry_lock*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,unsigned long long,unsigned long long) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 

int FUNC20(struct dentry *dentry,
			     struct inode *inode,
			     u64 parent_blkno)
{
	int ret;
	struct dentry *alias;
	struct ocfs2_dentry_lock *dl = dentry->d_fsdata;

	FUNC17(dentry->d_name.len, dentry->d_name.name,
				       (unsigned long long)parent_blkno, dl);

	/*
	 * Negative dentry. We ignore these for now.
	 *
	 * XXX: Could we can improve ocfs2_dentry_revalidate() by
	 * tracking these?
	 */
	if (!inode)
		return 0;

	if (FUNC2(dentry) && dentry->d_fsdata) {
		/* Converting a negative dentry to positive
		   Clear dentry->d_fsdata */
		dentry->d_fsdata = dl = NULL;
	}

	if (dl) {
		FUNC8(dl->dl_parent_blkno != parent_blkno,
				" \"%pd\": old parent: %llu, new: %llu\n",
				dentry,
				(unsigned long long)parent_blkno,
				(unsigned long long)dl->dl_parent_blkno);
		return 0;
	}

	alias = FUNC13(inode, parent_blkno, 0);
	if (alias) {
		/*
		 * Great, an alias exists, which means we must have a
		 * dentry lock already. We can just grab the lock off
		 * the alias and add it to the list.
		 *
		 * We're depending here on the fact that this dentry
		 * was found and exists in the dcache and so must have
		 * a reference to the dentry_lock because we can't
		 * race creates. Final dput() cannot happen on it
		 * since we have it pinned, so our reference is safe.
		 */
		dl = alias->d_fsdata;
		FUNC8(!dl, "parent %llu, ino %llu\n",
				(unsigned long long)parent_blkno,
				(unsigned long long)FUNC1(inode)->ip_blkno);

		FUNC8(dl->dl_parent_blkno != parent_blkno,
				" \"%pd\": old parent: %llu, new: %llu\n",
				dentry,
				(unsigned long long)parent_blkno,
				(unsigned long long)dl->dl_parent_blkno);

		FUNC18(dl->dl_lockres.l_name,
				(unsigned long long)parent_blkno,
				(unsigned long long)FUNC1(inode)->ip_blkno);

		goto out_attach;
	}

	/*
	 * There are no other aliases
	 */
	dl = FUNC7(sizeof(*dl), GFP_NOFS);
	if (!dl) {
		ret = -ENOMEM;
		FUNC9(ret);
		return ret;
	}

	dl->dl_count = 0;
	/*
	 * Does this have to happen below, for all attaches, in case
	 * the struct inode gets blown away by the downconvert thread?
	 */
	dl->dl_inode = FUNC4(inode);
	dl->dl_parent_blkno = parent_blkno;
	FUNC11(dl, parent_blkno, inode);

out_attach:
	FUNC15(&dentry_attach_lock);
	if (FUNC19(dentry->d_fsdata && !alias)) {
		/* d_fsdata is set by a racing thread which is doing
		 * the same thing as this thread is doing. Leave the racing
		 * thread going ahead and we return here.
		 */
		FUNC16(&dentry_attach_lock);
		FUNC5(dl->dl_inode);
		FUNC14(&dl->dl_lockres);
		FUNC6(dl);
		return 0;
	}

	dentry->d_fsdata = dl;
	dl->dl_count++;
	FUNC16(&dentry_attach_lock);

	/*
	 * This actually gets us our PRMODE level lock. From now on,
	 * we'll have a notification if one of these names is
	 * destroyed on another node.
	 */
	ret = FUNC10(dentry, 0);
	if (!ret)
		FUNC12(dentry, 0);
	else
		FUNC9(ret);

	/*
	 * In case of error, manually free the allocation and do the iput().
	 * We need to do this because error here means no d_instantiate(),
	 * which means iput() will not be called during dput(dentry).
	 */
	if (ret < 0 && !alias) {
		FUNC14(&dl->dl_lockres);
		FUNC0(dl->dl_count != 1);
		FUNC15(&dentry_attach_lock);
		dentry->d_fsdata = NULL;
		FUNC16(&dentry_attach_lock);
		FUNC6(dl);
		FUNC5(inode);
	}

	FUNC3(alias);

	return ret;
}