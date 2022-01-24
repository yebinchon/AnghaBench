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
typedef  int /*<<< orphan*/  u64 ;
struct ocfs2_inode_info {scalar_t__ ip_blkno; int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  ip_flags; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int EACCES ; 
 int ENAMETOOLONG ; 
 int ENOENT ; 
 struct dentry* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct ocfs2_inode_info* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INODE_MAYBE_ORPHANED ; 
 scalar_t__ OCFS2_MAX_FILENAME_LEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OI_LS_PARENT ; 
 struct dentry* FUNC5 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int FUNC8 (struct dentry*,struct inode*,scalar_t__) ; 
 struct inode* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct inode*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,struct dentry*,scalar_t__,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct dentry*) ; 

__attribute__((used)) static struct dentry *FUNC17(struct inode *dir, struct dentry *dentry,
				   unsigned int flags)
{
	int status;
	u64 blkno;
	struct inode *inode = NULL;
	struct dentry *ret;
	struct ocfs2_inode_info *oi;

	FUNC15(dir, dentry, dentry->d_name.len,
			   dentry->d_name.name,
			   (unsigned long long)FUNC3(dir)->ip_blkno, 0);

	if (dentry->d_name.len > OCFS2_MAX_FILENAME_LEN) {
		ret = FUNC0(-ENAMETOOLONG);
		goto bail;
	}

	status = FUNC10(dir, NULL, 0, OI_LS_PARENT);
	if (status < 0) {
		if (status != -ENOENT)
			FUNC6(status);
		ret = FUNC0(status);
		goto bail;
	}

	status = FUNC12(dir, dentry->d_name.name,
					    dentry->d_name.len, &blkno);
	if (status < 0)
		goto bail_add;

	inode = FUNC9(FUNC4(dir->i_sb), blkno, 0, 0);
	if (FUNC1(inode)) {
		ret = FUNC0(-EACCES);
		goto bail_unlock;
	}

	oi = FUNC3(inode);
	/* Clear any orphaned state... If we were able to look up the
	 * inode from a directory, it certainly can't be orphaned. We
	 * might have the bad state from a node which intended to
	 * orphan this inode but crashed before it could commit the
	 * unlink. */
	FUNC13(&oi->ip_lock);
	oi->ip_flags &= ~OCFS2_INODE_MAYBE_ORPHANED;
	FUNC14(&oi->ip_lock);

bail_add:
	ret = FUNC5(inode, dentry);

	if (inode) {
		/*
		 * If d_splice_alias() finds a DCACHE_DISCONNECTED
		 * dentry, it will d_move() it on top of ourse. The
		 * return value will indicate this however, so in
		 * those cases, we switch them around for the locking
		 * code.
		 *
		 * NOTE: This dentry already has ->d_op set from
		 * ocfs2_get_parent() and ocfs2_get_dentry()
		 */
		if (!FUNC2(ret))
			dentry = ret;

		status = FUNC8(dentry, inode,
						  FUNC3(dir)->ip_blkno);
		if (status) {
			FUNC6(status);
			ret = FUNC0(status);
			goto bail_unlock;
		}
	} else
		FUNC7(dentry);

bail_unlock:
	/* Don't drop the cluster lock until *after* the d_add --
	 * unlink on another node will message us to remove that
	 * dentry under this lock so otherwise we can race this with
	 * the downconvert thread and have a stale dentry. */
	FUNC11(dir, 0);

bail:

	FUNC16(ret);

	return ret;
}