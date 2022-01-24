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
struct xfs_trans {int dummy; } ;
struct xfs_name {int /*<<< orphan*/  len; int /*<<< orphan*/  type; } ;
struct xfs_mount {int dummy; } ;
struct TYPE_4__ {int di_flags; } ;
struct xfs_inode {int /*<<< orphan*/  i_ino; TYPE_1__ i_d; struct xfs_mount* i_mount; } ;
struct TYPE_6__ {int /*<<< orphan*/  tr_rename; } ;
struct TYPE_5__ {int i_nlink; int /*<<< orphan*/  i_state; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOSPC ; 
 int EXDEV ; 
 int /*<<< orphan*/  I_LINKABLE ; 
 TYPE_3__* FUNC1 (struct xfs_mount*) ; 
 unsigned int RENAME_EXCHANGE ; 
 unsigned int RENAME_NOREPLACE ; 
 unsigned int RENAME_WHITEOUT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct xfs_inode*) ; 
 int XFS_DIFLAG_PROJINHERIT ; 
 int /*<<< orphan*/  XFS_DIR3_FT_CHRDEV ; 
 int XFS_ICHGTIME_CHG ; 
 int XFS_ICHGTIME_MOD ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 int FUNC4 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int __XFS_SORT_INODES ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_inode*,struct xfs_inode*,struct xfs_name*,struct xfs_name*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_trans*,struct xfs_inode*) ; 
 int FUNC8 (struct xfs_trans*,struct xfs_inode*,struct xfs_name*,struct xfs_inode*,struct xfs_inode*,struct xfs_name*,struct xfs_inode*,int) ; 
 int FUNC9 (struct xfs_trans*,struct xfs_inode*,struct xfs_name*) ; 
 int FUNC10 (struct xfs_trans*,struct xfs_inode*,struct xfs_name*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_inode*) ; 
 int FUNC12 (struct xfs_trans*,struct xfs_inode*,struct xfs_name*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct xfs_trans*,struct xfs_inode*,struct xfs_name*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct xfs_trans*,struct xfs_inode*) ; 
 int FUNC15 (struct xfs_trans*) ; 
 scalar_t__ FUNC16 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct xfs_inode*) ; 
 int FUNC18 (struct xfs_trans*,struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct xfs_inode**,int,int /*<<< orphan*/ ) ; 
 struct xfs_name xfs_name_dotdot ; 
 int FUNC20 (struct xfs_inode**) ; 
 int FUNC21 (struct xfs_inode*,struct xfs_inode**) ; 
 int /*<<< orphan*/  FUNC22 (struct xfs_inode*,struct xfs_inode*,struct xfs_inode*,struct xfs_inode*,struct xfs_inode*,struct xfs_inode**,int*) ; 
 int FUNC23 (struct xfs_mount*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_trans**) ; 
 int /*<<< orphan*/  FUNC24 (struct xfs_trans*) ; 
 int /*<<< orphan*/  FUNC25 (struct xfs_trans*,struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ) ; 

int
FUNC28(
	struct xfs_inode	*src_dp,
	struct xfs_name		*src_name,
	struct xfs_inode	*src_ip,
	struct xfs_inode	*target_dp,
	struct xfs_name		*target_name,
	struct xfs_inode	*target_ip,
	unsigned int		flags)
{
	struct xfs_mount	*mp = src_dp->i_mount;
	struct xfs_trans	*tp;
	struct xfs_inode	*wip = NULL;		/* whiteout inode */
	struct xfs_inode	*inodes[__XFS_SORT_INODES];
	int			num_inodes = __XFS_SORT_INODES;
	bool			new_parent = (src_dp != target_dp);
	bool			src_is_directory = FUNC2(FUNC3(src_ip)->i_mode);
	int			spaceres;
	int			error;

	FUNC5(src_dp, target_dp, src_name, target_name);

	if ((flags & RENAME_EXCHANGE) && !target_ip)
		return -EINVAL;

	/*
	 * If we are doing a whiteout operation, allocate the whiteout inode
	 * we will be placing at the target and ensure the type is set
	 * appropriately.
	 */
	if (flags & RENAME_WHITEOUT) {
		FUNC0(!(flags & (RENAME_NOREPLACE | RENAME_EXCHANGE)));
		error = FUNC21(target_dp, &wip);
		if (error)
			return error;

		/* setup target dirent info as whiteout */
		src_name->type = XFS_DIR3_FT_CHRDEV;
	}

	FUNC22(src_dp, target_dp, src_ip, target_ip, wip,
				inodes, &num_inodes);

	spaceres = FUNC4(mp, target_name->len);
	error = FUNC23(mp, &FUNC1(mp)->tr_rename, spaceres, 0, 0, &tp);
	if (error == -ENOSPC) {
		spaceres = 0;
		error = FUNC23(mp, &FUNC1(mp)->tr_rename, 0, 0, 0,
				&tp);
	}
	if (error)
		goto out_release_wip;

	/*
	 * Attach the dquots to the inodes
	 */
	error = FUNC20(inodes);
	if (error)
		goto out_trans_cancel;

	/*
	 * Lock all the participating inodes. Depending upon whether
	 * the target_name exists in the target directory, and
	 * whether the target directory is the same as the source
	 * directory, we can lock from 2 to 4 inodes.
	 */
	FUNC19(inodes, num_inodes, XFS_ILOCK_EXCL);

	/*
	 * Join all the inodes to the transaction. From this point on,
	 * we can rely on either trans_commit or trans_cancel to unlock
	 * them.
	 */
	FUNC26(tp, src_dp, XFS_ILOCK_EXCL);
	if (new_parent)
		FUNC26(tp, target_dp, XFS_ILOCK_EXCL);
	FUNC26(tp, src_ip, XFS_ILOCK_EXCL);
	if (target_ip)
		FUNC26(tp, target_ip, XFS_ILOCK_EXCL);
	if (wip)
		FUNC26(tp, wip, XFS_ILOCK_EXCL);

	/*
	 * If we are using project inheritance, we only allow renames
	 * into our tree when the project IDs are the same; else the
	 * tree quota mechanism would be circumvented.
	 */
	if (FUNC6((target_dp->i_d.di_flags & XFS_DIFLAG_PROJINHERIT) &&
		     (FUNC16(target_dp) != FUNC16(src_ip)))) {
		error = -EXDEV;
		goto out_trans_cancel;
	}

	/* RENAME_EXCHANGE is unique from here on. */
	if (flags & RENAME_EXCHANGE)
		return FUNC8(tp, src_dp, src_name, src_ip,
					target_dp, target_name, target_ip,
					spaceres);

	/*
	 * Check for expected errors before we dirty the transaction
	 * so we can return an error without a transaction abort.
	 */
	if (target_ip == NULL) {
		/*
		 * If there's no space reservation, check the entry will
		 * fit before actually inserting it.
		 */
		if (!spaceres) {
			error = FUNC9(tp, target_dp, target_name);
			if (error)
				goto out_trans_cancel;
		}
	} else {
		/*
		 * If target exists and it's a directory, check that whether
		 * it can be destroyed.
		 */
		if (FUNC2(FUNC3(target_ip)->i_mode) &&
		    (!FUNC11(target_ip) ||
		     (FUNC3(target_ip)->i_nlink > 2))) {
			error = -EEXIST;
			goto out_trans_cancel;
		}
	}

	/*
	 * Directory entry creation below may acquire the AGF. Remove
	 * the whiteout from the unlinked list first to preserve correct
	 * AGI/AGF locking order. This dirties the transaction so failures
	 * after this point will abort and log recovery will clean up the
	 * mess.
	 *
	 * For whiteouts, we need to bump the link count on the whiteout
	 * inode. After this point, we have a real link, clear the tmpfile
	 * state flag from the inode so it doesn't accidentally get misused
	 * in future.
	 */
	if (wip) {
		FUNC0(FUNC3(wip)->i_nlink == 0);
		error = FUNC18(tp, wip);
		if (error)
			goto out_trans_cancel;

		FUNC7(tp, wip);
		FUNC27(tp, wip, XFS_ILOG_CORE);
		FUNC3(wip)->i_state &= ~I_LINKABLE;
	}

	/*
	 * Set up the target.
	 */
	if (target_ip == NULL) {
		/*
		 * If target does not exist and the rename crosses
		 * directories, adjust the target directory link count
		 * to account for the ".." reference from the new entry.
		 */
		error = FUNC10(tp, target_dp, target_name,
					   src_ip->i_ino, spaceres);
		if (error)
			goto out_trans_cancel;

		FUNC25(tp, target_dp,
					XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);

		if (new_parent && src_is_directory) {
			FUNC7(tp, target_dp);
		}
	} else { /* target_ip != NULL */
		/*
		 * Link the source inode under the target name.
		 * If the source inode is a directory and we are moving
		 * it across directories, its ".." entry will be
		 * inconsistent until we replace that down below.
		 *
		 * In case there is already an entry with the same
		 * name at the destination directory, remove it first.
		 */
		error = FUNC13(tp, target_dp, target_name,
					src_ip->i_ino, spaceres);
		if (error)
			goto out_trans_cancel;

		FUNC25(tp, target_dp,
					XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);

		/*
		 * Decrement the link count on the target since the target
		 * dir no longer points to it.
		 */
		error = FUNC14(tp, target_ip);
		if (error)
			goto out_trans_cancel;

		if (src_is_directory) {
			/*
			 * Drop the link from the old "." entry.
			 */
			error = FUNC14(tp, target_ip);
			if (error)
				goto out_trans_cancel;
		}
	} /* target_ip != NULL */

	/*
	 * Remove the source.
	 */
	if (new_parent && src_is_directory) {
		/*
		 * Rewrite the ".." entry to point to the new
		 * directory.
		 */
		error = FUNC13(tp, src_ip, &xfs_name_dotdot,
					target_dp->i_ino, spaceres);
		FUNC0(error != -EEXIST);
		if (error)
			goto out_trans_cancel;
	}

	/*
	 * We always want to hit the ctime on the source inode.
	 *
	 * This isn't strictly required by the standards since the source
	 * inode isn't really being changed, but old unix file systems did
	 * it and some incremental backup programs won't work without it.
	 */
	FUNC25(tp, src_ip, XFS_ICHGTIME_CHG);
	FUNC27(tp, src_ip, XFS_ILOG_CORE);

	/*
	 * Adjust the link count on src_dp.  This is necessary when
	 * renaming a directory, either within one parent when
	 * the target existed, or across two parent directories.
	 */
	if (src_is_directory && (new_parent || target_ip != NULL)) {

		/*
		 * Decrement link count on src_directory since the
		 * entry that's moved no longer points to it.
		 */
		error = FUNC14(tp, src_dp);
		if (error)
			goto out_trans_cancel;
	}

	/*
	 * For whiteouts, we only need to update the source dirent with the
	 * inode number of the whiteout inode rather than removing it
	 * altogether.
	 */
	if (wip) {
		error = FUNC13(tp, src_dp, src_name, wip->i_ino,
					spaceres);
	} else
		error = FUNC12(tp, src_dp, src_name, src_ip->i_ino,
					   spaceres);
	if (error)
		goto out_trans_cancel;

	FUNC25(tp, src_dp, XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);
	FUNC27(tp, src_dp, XFS_ILOG_CORE);
	if (new_parent)
		FUNC27(tp, target_dp, XFS_ILOG_CORE);

	error = FUNC15(tp);
	if (wip)
		FUNC17(wip);
	return error;

out_trans_cancel:
	FUNC24(tp);
out_release_wip:
	if (wip)
		FUNC17(wip);
	return error;
}