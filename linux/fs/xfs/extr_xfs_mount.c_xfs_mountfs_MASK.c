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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint ;
struct TYPE_5__ {int /*<<< orphan*/ * b; } ;
struct xfs_sb {int sb_versionnum; scalar_t__ sb_spino_align; int sb_qflags; int /*<<< orphan*/  sb_rootino; int /*<<< orphan*/  sb_logblocks; int /*<<< orphan*/  sb_logstart; int /*<<< orphan*/  sb_agcount; TYPE_2__ sb_uuid; int /*<<< orphan*/  sb_features2; int /*<<< orphan*/  sb_bad_features2; } ;
struct TYPE_4__ {int /*<<< orphan*/  xs_kobj; } ;
struct xfs_mount {int m_update_sb; int m_flags; int m_fail_unmount; char* m_fsname; int* m_fixedfsid; scalar_t__ m_logdev_targp; scalar_t__ m_qflags; scalar_t__ m_ddev_targp; int /*<<< orphan*/  m_kobj; TYPE_1__ m_stats; int /*<<< orphan*/  m_reclaim_work; struct xfs_sb m_sb; struct xfs_inode* m_rootip; int /*<<< orphan*/  m_maxagi; } ;
struct xfs_inode {scalar_t__ i_ino; } ;
struct xfs_ino_geometry {int /*<<< orphan*/  inode_cluster_size_raw; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFSCORRUPTED ; 
 int EINVAL ; 
 int ENOSPC ; 
 struct xfs_ino_geometry* FUNC1 (struct xfs_mount*) ; 
 int /*<<< orphan*/  SHUTDOWN_CORRUPT_INCORE ; 
 int /*<<< orphan*/  SYNC_WAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (struct xfs_inode*) ; 
 int XFS_ALL_QUOTA_ACCT ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 scalar_t__ FUNC4 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int /*<<< orphan*/  XFS_ERRLEVEL_LOW ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_IGET_UNTRUSTED ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_mount*) ; 
 scalar_t__ FUNC9 (struct xfs_mount*) ; 
 int XFS_MOUNT_ATTR2 ; 
 int XFS_MOUNT_NOATTR2 ; 
 int XFS_MOUNT_NORECOVERY ; 
 int XFS_MOUNT_RDONLY ; 
 int XFS_MOUNT_UNMOUNTING ; 
 int XFS_SB_VERSION_NLINKBIT ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC15 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct xfs_mount*) ; 
 int FUNC17 (struct xfs_mount*) ; 
 int FUNC18 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC19 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC20 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC21 (struct xfs_mount*,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct xfs_mount*) ; 
 int FUNC23 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC24 (struct xfs_mount*) ; 
 int FUNC25 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC26 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct xfs_mount*) ; 
 int FUNC28 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC29 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC30 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC31 (struct xfs_mount*) ; 
 int FUNC32 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_inode**) ; 
 int FUNC33 (struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC35 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC36 (struct xfs_mount*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (struct xfs_mount*) ; 
 int FUNC38 (struct xfs_mount*) ; 
 int FUNC39 (struct xfs_mount*) ; 
 int /*<<< orphan*/  xfs_mp_ktype ; 
 int /*<<< orphan*/  FUNC40 (struct xfs_mount*,char*) ; 
 int /*<<< orphan*/  FUNC41 (struct xfs_mount*) ; 
 int FUNC42 (struct xfs_mount*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC43 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC44 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC45 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC46 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (struct xfs_mount*) ; 
 int FUNC48 (struct xfs_mount*) ; 
 int FUNC49 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC50 (struct xfs_mount*) ; 
 int FUNC51 (struct xfs_mount*) ; 
 int FUNC52 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC53 (struct xfs_mount*) ; 
 scalar_t__ FUNC54 (struct xfs_sb*) ; 
 int /*<<< orphan*/  FUNC55 (struct xfs_mount*,struct xfs_sb*) ; 
 scalar_t__ FUNC56 (struct xfs_sb*) ; 
 scalar_t__ FUNC57 (struct xfs_sb*) ; 
 int /*<<< orphan*/  FUNC58 (struct xfs_sb*) ; 
 int /*<<< orphan*/  FUNC59 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC60 (struct xfs_mount*) ; 
 int /*<<< orphan*/  xfs_stats_ktype ; 
 int FUNC61 (struct xfs_mount*,int) ; 
 int /*<<< orphan*/  FUNC62 (int /*<<< orphan*/ *) ; 
 int FUNC63 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC64 (struct xfs_mount*) ; 
 int FUNC65 (struct xfs_mount*) ; 
 int FUNC66 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC67 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC68 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC69 (struct xfs_mount*,char*,...) ; 

int
FUNC70(
	struct xfs_mount	*mp)
{
	struct xfs_sb		*sbp = &(mp->m_sb);
	struct xfs_inode	*rip;
	struct xfs_ino_geometry	*igeo = FUNC1(mp);
	uint64_t		resblks;
	uint			quotamount = 0;
	uint			quotaflags = 0;
	int			error = 0;

	FUNC55(mp, sbp);

	/*
	 * Check for a mismatched features2 values.  Older kernels read & wrote
	 * into the wrong sb offset for sb_features2 on some platforms due to
	 * xfs_sb_t not being 64bit size aligned when sb_features2 was added,
	 * which made older superblock reading/writing routines swap it as a
	 * 64-bit value.
	 *
	 * For backwards compatibility, we make both slots equal.
	 *
	 * If we detect a mismatched field, we OR the set bits into the existing
	 * features2 field in case it has already been modified; we don't want
	 * to lose any features.  We then update the bad location with the ORed
	 * value so that older kernels will see any features2 flags. The
	 * superblock writeback code ensures the new sb_features2 is copied to
	 * sb_bad_features2 before it is logged or written to disk.
	 */
	if (FUNC54(sbp)) {
		FUNC69(mp, "correcting sb_features alignment problem");
		sbp->sb_features2 |= sbp->sb_bad_features2;
		mp->m_update_sb = true;

		/*
		 * Re-check for ATTR2 in case it was found in bad_features2
		 * slot.
		 */
		if (FUNC56(&mp->m_sb) &&
		   !(mp->m_flags & XFS_MOUNT_NOATTR2))
			mp->m_flags |= XFS_MOUNT_ATTR2;
	}

	if (FUNC56(&mp->m_sb) &&
	   (mp->m_flags & XFS_MOUNT_NOATTR2)) {
		FUNC58(&mp->m_sb);
		mp->m_update_sb = true;

		/* update sb_versionnum for the clearing of the morebits */
		if (!sbp->sb_features2)
			mp->m_update_sb = true;
	}

	/* always use v2 inodes by default now */
	if (!(mp->m_sb.sb_versionnum & XFS_SB_VERSION_NLINKBIT)) {
		mp->m_sb.sb_versionnum |= XFS_SB_VERSION_NLINKBIT;
		mp->m_update_sb = true;
	}

	/*
	 * Check if sb_agblocks is aligned at stripe boundary
	 * If sb_agblocks is NOT aligned turn off m_dalign since
	 * allocator alignment is within an ag, therefore ag has
	 * to be aligned at stripe boundary.
	 */
	error = FUNC65(mp);
	if (error)
		goto out;

	FUNC14(mp);
	FUNC15(mp, XFS_DATA_FORK);
	FUNC15(mp, XFS_ATTR_FORK);
	FUNC31(mp);
	FUNC50(mp);
	FUNC47(mp);

	/* enable fail_at_unmount as default */
	mp->m_fail_unmount = true;

	error = FUNC63(&mp->m_kobj, &xfs_mp_ktype, NULL, mp->m_fsname);
	if (error)
		goto out;

	error = FUNC63(&mp->m_stats.xs_kobj, &xfs_stats_ktype,
			       &mp->m_kobj, "stats");
	if (error)
		goto out_remove_sysfs;

	error = FUNC23(mp);
	if (error)
		goto out_del_stats;

	error = FUNC25(mp);
	if (error)
		goto out_remove_error_sysfs;

	error = FUNC66(mp);
	if (error)
		goto out_remove_errortag;

	/*
	 * Set the minimum read and write sizes
	 */
	FUNC60(mp);

	/* set the low space thresholds for dynamic preallocation */
	FUNC59(mp);

	/*
	 * If enabled, sparse inode chunk alignment is expected to match the
	 * cluster size. Full inode chunk alignment must match the chunk size,
	 * but that is checked on sb read verification...
	 */
	if (FUNC57(&mp->m_sb) &&
	    mp->m_sb.sb_spino_align !=
			FUNC4(mp, igeo->inode_cluster_size_raw)) {
		FUNC69(mp,
	"Sparse inode block alignment (%u) must match cluster size (%llu).",
			 mp->m_sb.sb_spino_align,
			 FUNC4(mp, igeo->inode_cluster_size_raw));
		error = -EINVAL;
		goto out_remove_uuid;
	}

	/*
	 * Check that the data (and log if separate) is an ok size.
	 */
	error = FUNC16(mp);
	if (error)
		goto out_remove_uuid;

	/*
	 * Initialize realtime fields in the mount structure
	 */
	error = FUNC51(mp);
	if (error) {
		FUNC69(mp, "RT mount failed");
		goto out_remove_uuid;
	}

	/*
	 *  Copies the low order bits of the timestamp and the randomly
	 *  set "sequence" number out of a UUID.
	 */
	mp->m_fixedfsid[0] =
		(FUNC11(&sbp->sb_uuid.b[8]) << 16) |
		 FUNC11(&sbp->sb_uuid.b[4]);
	mp->m_fixedfsid[1] = FUNC12(&sbp->sb_uuid.b[0]);

	error = FUNC18(mp);
	if (error) {
		FUNC69(mp, "Failed dir/attr init: %d", error);
		goto out_remove_uuid;
	}

	/*
	 * Initialize the precomputed transaction reservations values.
	 */
	FUNC64(mp);

	/*
	 * Allocate and initialize the per-ag data.
	 */
	error = FUNC33(mp, sbp->sb_agcount, &mp->m_maxagi);
	if (error) {
		FUNC69(mp, "Failed per-ag init: %d", error);
		goto out_free_dir;
	}

	if (!sbp->sb_logblocks) {
		FUNC69(mp, "no log defined");
		FUNC5("xfs_mountfs", XFS_ERRLEVEL_LOW, mp);
		error = -EFSCORRUPTED;
		goto out_free_perag;
	}

	/*
	 * Log's mount-time initialization. The first part of recovery can place
	 * some items on the AIL, to be handled when recovery is finished or
	 * cancelled.
	 */
	error = FUNC36(mp, mp->m_logdev_targp,
			      FUNC7(mp, sbp->sb_logstart),
			      FUNC6(mp, sbp->sb_logblocks));
	if (error) {
		FUNC69(mp, "log mount failed");
		goto out_fail_wait;
	}

	/* Make sure the summary counts are ok. */
	error = FUNC17(mp);
	if (error)
		goto out_log_dealloc;

	/*
	 * Get and sanity-check the root inode.
	 * Save the pointer to it in the mount structure.
	 */
	error = FUNC32(mp, NULL, sbp->sb_rootino, XFS_IGET_UNTRUSTED,
			 XFS_ILOCK_EXCL, &rip);
	if (error) {
		FUNC69(mp,
			"Failed to read root inode 0x%llx, error %d",
			sbp->sb_rootino, -error);
		goto out_log_dealloc;
	}

	FUNC0(rip != NULL);

	if (FUNC13(!FUNC2(FUNC3(rip)->i_mode))) {
		FUNC69(mp, "corrupted root inode %llu: not a directory",
			(unsigned long long)rip->i_ino);
		FUNC35(rip, XFS_ILOCK_EXCL);
		FUNC5("xfs_mountfs_int(2)", XFS_ERRLEVEL_LOW,
				 mp);
		error = -EFSCORRUPTED;
		goto out_rele_rip;
	}
	mp->m_rootip = rip;	/* save it */

	FUNC35(rip, XFS_ILOCK_EXCL);

	/*
	 * Initialize realtime inode pointers in the mount structure
	 */
	error = FUNC52(mp);
	if (error) {
		/*
		 * Free up the root inode.
		 */
		FUNC69(mp, "failed to read RT inodes");
		goto out_rele_rip;
	}

	/*
	 * If this is a read-only mount defer the superblock updates until
	 * the next remount into writeable mode.  Otherwise we would never
	 * perform the update e.g. for the root filesystem.
	 */
	if (mp->m_update_sb && !(mp->m_flags & XFS_MOUNT_RDONLY)) {
		error = FUNC61(mp, false);
		if (error) {
			FUNC69(mp, "failed to write sb changes");
			goto out_rtunmount;
		}
	}

	/*
	 * Initialise the XFS quota management subsystem for this mount
	 */
	if (FUNC9(mp)) {
		error = FUNC42(mp, &quotamount, &quotaflags);
		if (error)
			goto out_rtunmount;
	} else {
		FUNC0(!FUNC8(mp));

		/*
		 * If a file system had quotas running earlier, but decided to
		 * mount without -o uquota/pquota/gquota options, revoke the
		 * quotachecked license.
		 */
		if (mp->m_sb.sb_qflags & XFS_ALL_QUOTA_ACCT) {
			FUNC40(mp, "resetting quota flags");
			error = FUNC39(mp);
			if (error)
				goto out_rtunmount;
		}
	}

	/*
	 * Finish recovering the file system.  This part needed to be delayed
	 * until after the root and real-time bitmap inodes were consistently
	 * read in.
	 */
	error = FUNC38(mp);
	if (error) {
		FUNC69(mp, "log mount finish failed");
		goto out_rtunmount;
	}

	/*
	 * Now the log is fully replayed, we can transition to full read-only
	 * mode for read-only mounts. This will sync all the metadata and clean
	 * the log so that the recovery we just performed does not have to be
	 * replayed again on the next mount.
	 *
	 * We use the same quiesce mechanism as the rw->ro remount, as they are
	 * semantically identical operations.
	 */
	if ((mp->m_flags & (XFS_MOUNT_RDONLY|XFS_MOUNT_NORECOVERY)) ==
							XFS_MOUNT_RDONLY) {
		FUNC45(mp);
	}

	/*
	 * Complete the quota initialisation, post-log-replay component.
	 */
	if (quotamount) {
		FUNC0(mp->m_qflags == 0);
		mp->m_qflags = quotaflags;

		FUNC41(mp);
	}

	/*
	 * Now we are mounted, reserve a small amount of unused space for
	 * privileged transactions. This is needed so that transaction
	 * space required for critical operations can dip into this pool
	 * when at ENOSPC. This is needed for operations like create with
	 * attr, unwritten extent conversion at ENOSPC, etc. Data allocations
	 * are not allowed to use this reserved space.
	 *
	 * This may drive us straight to ENOSPC on mount, but that implies
	 * we were already there on the last unmount. Warn if this occurs.
	 */
	if (!(mp->m_flags & XFS_MOUNT_RDONLY)) {
		resblks = FUNC20(mp);
		error = FUNC49(mp, &resblks, NULL);
		if (error)
			FUNC69(mp,
	"Unable to allocate reserve blocks. Continuing without reserve pool.");

		/* Recover any CoW blocks that never got remapped. */
		error = FUNC48(mp);
		if (error) {
			FUNC21(mp,
	"Error %d recovering leftover CoW allocations.", error);
			FUNC26(mp, SHUTDOWN_CORRUPT_INCORE);
			goto out_quota;
		}

		/* Reserve AG blocks for future btree expansion. */
		error = FUNC28(mp);
		if (error && error != -ENOSPC)
			goto out_agresv;
	}

	return 0;

 out_agresv:
	FUNC29(mp);
 out_quota:
	FUNC44(mp);
 out_rtunmount:
	FUNC53(mp);
 out_rele_rip:
	FUNC34(rip);
	/* Clean out dquots that might be in memory after quotacheck. */
	FUNC43(mp);
	/*
	 * Cancel all delayed reclaim work and reclaim the inodes directly.
	 * We have to do this /after/ rtunmount and qm_unmount because those
	 * two will have scheduled delayed reclaim for the rt/quota inodes.
	 *
	 * This is slightly different from the unmountfs call sequence
	 * because we could be tearing down a partially set up mount.  In
	 * particular, if log_mount_finish fails we bail out without calling
	 * qm_unmount_quotas and therefore rely on qm_unmount to release the
	 * quota inodes.
	 */
	FUNC10(&mp->m_reclaim_work);
	FUNC46(mp, SYNC_WAIT);
	FUNC30(mp);
 out_log_dealloc:
	mp->m_flags |= XFS_MOUNT_UNMOUNTING;
	FUNC37(mp);
 out_fail_wait:
	if (mp->m_logdev_targp && mp->m_logdev_targp != mp->m_ddev_targp)
		FUNC68(mp->m_logdev_targp);
	FUNC68(mp->m_ddev_targp);
 out_free_perag:
	FUNC27(mp);
 out_free_dir:
	FUNC19(mp);
 out_remove_uuid:
	FUNC67(mp);
 out_remove_errortag:
	FUNC24(mp);
 out_remove_error_sysfs:
	FUNC22(mp);
 out_del_stats:
	FUNC62(&mp->m_stats.xs_kobj);
 out_remove_sysfs:
	FUNC62(&mp->m_kobj);
 out:
	return error;
}