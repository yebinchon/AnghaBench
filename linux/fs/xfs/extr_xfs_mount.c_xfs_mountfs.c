
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint ;
struct TYPE_5__ {int * b; } ;
struct xfs_sb {int sb_versionnum; scalar_t__ sb_spino_align; int sb_qflags; int sb_rootino; int sb_logblocks; int sb_logstart; int sb_agcount; TYPE_2__ sb_uuid; int sb_features2; int sb_bad_features2; } ;
struct TYPE_4__ {int xs_kobj; } ;
struct xfs_mount {int m_update_sb; int m_flags; int m_fail_unmount; char* m_fsname; int* m_fixedfsid; scalar_t__ m_logdev_targp; scalar_t__ m_qflags; scalar_t__ m_ddev_targp; int m_kobj; TYPE_1__ m_stats; int m_reclaim_work; struct xfs_sb m_sb; struct xfs_inode* m_rootip; int m_maxagi; } ;
struct xfs_inode {scalar_t__ i_ino; } ;
struct xfs_ino_geometry {int inode_cluster_size_raw; } ;
struct TYPE_6__ {int i_mode; } ;


 int ASSERT (int) ;
 int EFSCORRUPTED ;
 int EINVAL ;
 int ENOSPC ;
 struct xfs_ino_geometry* M_IGEO (struct xfs_mount*) ;
 int SHUTDOWN_CORRUPT_INCORE ;
 int SYNC_WAIT ;
 int S_ISDIR (int ) ;
 TYPE_3__* VFS_I (struct xfs_inode*) ;
 int XFS_ALL_QUOTA_ACCT ;
 int XFS_ATTR_FORK ;
 scalar_t__ XFS_B_TO_FSBT (struct xfs_mount*,int ) ;
 int XFS_DATA_FORK ;
 int XFS_ERRLEVEL_LOW ;
 int XFS_ERROR_REPORT (char*,int ,struct xfs_mount*) ;
 int XFS_FSB_TO_BB (struct xfs_mount*,int ) ;
 int XFS_FSB_TO_DADDR (struct xfs_mount*,int ) ;
 int XFS_IGET_UNTRUSTED ;
 int XFS_ILOCK_EXCL ;
 int XFS_IS_QUOTA_ON (struct xfs_mount*) ;
 scalar_t__ XFS_IS_QUOTA_RUNNING (struct xfs_mount*) ;
 int XFS_MOUNT_ATTR2 ;
 int XFS_MOUNT_NOATTR2 ;
 int XFS_MOUNT_NORECOVERY ;
 int XFS_MOUNT_RDONLY ;
 int XFS_MOUNT_UNMOUNTING ;
 int XFS_SB_VERSION_NLINKBIT ;
 int cancel_delayed_work_sync (int *) ;
 int get_unaligned_be16 (int *) ;
 int get_unaligned_be32 (int *) ;
 scalar_t__ unlikely (int) ;
 int xfs_alloc_compute_maxlevels (struct xfs_mount*) ;
 int xfs_bmap_compute_maxlevels (struct xfs_mount*,int ) ;
 int xfs_check_sizes (struct xfs_mount*) ;
 int xfs_check_summary_counts (struct xfs_mount*) ;
 int xfs_da_mount (struct xfs_mount*) ;
 int xfs_da_unmount (struct xfs_mount*) ;
 int xfs_default_resblks (struct xfs_mount*) ;
 int xfs_err (struct xfs_mount*,char*,int) ;
 int xfs_error_sysfs_del (struct xfs_mount*) ;
 int xfs_error_sysfs_init (struct xfs_mount*) ;
 int xfs_errortag_del (struct xfs_mount*) ;
 int xfs_errortag_init (struct xfs_mount*) ;
 int xfs_force_shutdown (struct xfs_mount*,int ) ;
 int xfs_free_perag (struct xfs_mount*) ;
 int xfs_fs_reserve_ag_blocks (struct xfs_mount*) ;
 int xfs_fs_unreserve_ag_blocks (struct xfs_mount*) ;
 int xfs_health_unmount (struct xfs_mount*) ;
 int xfs_ialloc_setup_geometry (struct xfs_mount*) ;
 int xfs_iget (struct xfs_mount*,int *,int ,int ,int ,struct xfs_inode**) ;
 int xfs_initialize_perag (struct xfs_mount*,int ,int *) ;
 int xfs_irele (struct xfs_inode*) ;
 int xfs_iunlock (struct xfs_inode*,int ) ;
 int xfs_log_mount (struct xfs_mount*,scalar_t__,int ,int ) ;
 int xfs_log_mount_cancel (struct xfs_mount*) ;
 int xfs_log_mount_finish (struct xfs_mount*) ;
 int xfs_mount_reset_sbqflags (struct xfs_mount*) ;
 int xfs_mp_ktype ;
 int xfs_notice (struct xfs_mount*,char*) ;
 int xfs_qm_mount_quotas (struct xfs_mount*) ;
 int xfs_qm_newmount (struct xfs_mount*,scalar_t__*,scalar_t__*) ;
 int xfs_qm_unmount (struct xfs_mount*) ;
 int xfs_qm_unmount_quotas (struct xfs_mount*) ;
 int xfs_quiesce_attr (struct xfs_mount*) ;
 int xfs_reclaim_inodes (struct xfs_mount*,int ) ;
 int xfs_refcountbt_compute_maxlevels (struct xfs_mount*) ;
 int xfs_reflink_recover_cow (struct xfs_mount*) ;
 int xfs_reserve_blocks (struct xfs_mount*,int *,int *) ;
 int xfs_rmapbt_compute_maxlevels (struct xfs_mount*) ;
 int xfs_rtmount_init (struct xfs_mount*) ;
 int xfs_rtmount_inodes (struct xfs_mount*) ;
 int xfs_rtunmount_inodes (struct xfs_mount*) ;
 scalar_t__ xfs_sb_has_mismatched_features2 (struct xfs_sb*) ;
 int xfs_sb_mount_common (struct xfs_mount*,struct xfs_sb*) ;
 scalar_t__ xfs_sb_version_hasattr2 (struct xfs_sb*) ;
 scalar_t__ xfs_sb_version_hassparseinodes (struct xfs_sb*) ;
 int xfs_sb_version_removeattr2 (struct xfs_sb*) ;
 int xfs_set_low_space_thresholds (struct xfs_mount*) ;
 int xfs_set_rw_sizes (struct xfs_mount*) ;
 int xfs_stats_ktype ;
 int xfs_sync_sb (struct xfs_mount*,int) ;
 int xfs_sysfs_del (int *) ;
 int xfs_sysfs_init (int *,int *,int *,char*) ;
 int xfs_trans_init (struct xfs_mount*) ;
 int xfs_update_alignment (struct xfs_mount*) ;
 int xfs_uuid_mount (struct xfs_mount*) ;
 int xfs_uuid_unmount (struct xfs_mount*) ;
 int xfs_wait_buftarg (scalar_t__) ;
 int xfs_warn (struct xfs_mount*,char*,...) ;

int
xfs_mountfs(
 struct xfs_mount *mp)
{
 struct xfs_sb *sbp = &(mp->m_sb);
 struct xfs_inode *rip;
 struct xfs_ino_geometry *igeo = M_IGEO(mp);
 uint64_t resblks;
 uint quotamount = 0;
 uint quotaflags = 0;
 int error = 0;

 xfs_sb_mount_common(mp, sbp);
 if (xfs_sb_has_mismatched_features2(sbp)) {
  xfs_warn(mp, "correcting sb_features alignment problem");
  sbp->sb_features2 |= sbp->sb_bad_features2;
  mp->m_update_sb = 1;





  if (xfs_sb_version_hasattr2(&mp->m_sb) &&
     !(mp->m_flags & XFS_MOUNT_NOATTR2))
   mp->m_flags |= XFS_MOUNT_ATTR2;
 }

 if (xfs_sb_version_hasattr2(&mp->m_sb) &&
    (mp->m_flags & XFS_MOUNT_NOATTR2)) {
  xfs_sb_version_removeattr2(&mp->m_sb);
  mp->m_update_sb = 1;


  if (!sbp->sb_features2)
   mp->m_update_sb = 1;
 }


 if (!(mp->m_sb.sb_versionnum & XFS_SB_VERSION_NLINKBIT)) {
  mp->m_sb.sb_versionnum |= XFS_SB_VERSION_NLINKBIT;
  mp->m_update_sb = 1;
 }







 error = xfs_update_alignment(mp);
 if (error)
  goto out;

 xfs_alloc_compute_maxlevels(mp);
 xfs_bmap_compute_maxlevels(mp, XFS_DATA_FORK);
 xfs_bmap_compute_maxlevels(mp, XFS_ATTR_FORK);
 xfs_ialloc_setup_geometry(mp);
 xfs_rmapbt_compute_maxlevels(mp);
 xfs_refcountbt_compute_maxlevels(mp);


 mp->m_fail_unmount = 1;

 error = xfs_sysfs_init(&mp->m_kobj, &xfs_mp_ktype, ((void*)0), mp->m_fsname);
 if (error)
  goto out;

 error = xfs_sysfs_init(&mp->m_stats.xs_kobj, &xfs_stats_ktype,
          &mp->m_kobj, "stats");
 if (error)
  goto out_remove_sysfs;

 error = xfs_error_sysfs_init(mp);
 if (error)
  goto out_del_stats;

 error = xfs_errortag_init(mp);
 if (error)
  goto out_remove_error_sysfs;

 error = xfs_uuid_mount(mp);
 if (error)
  goto out_remove_errortag;




 xfs_set_rw_sizes(mp);


 xfs_set_low_space_thresholds(mp);






 if (xfs_sb_version_hassparseinodes(&mp->m_sb) &&
     mp->m_sb.sb_spino_align !=
   XFS_B_TO_FSBT(mp, igeo->inode_cluster_size_raw)) {
  xfs_warn(mp,
 "Sparse inode block alignment (%u) must match cluster size (%llu).",
    mp->m_sb.sb_spino_align,
    XFS_B_TO_FSBT(mp, igeo->inode_cluster_size_raw));
  error = -EINVAL;
  goto out_remove_uuid;
 }




 error = xfs_check_sizes(mp);
 if (error)
  goto out_remove_uuid;




 error = xfs_rtmount_init(mp);
 if (error) {
  xfs_warn(mp, "RT mount failed");
  goto out_remove_uuid;
 }





 mp->m_fixedfsid[0] =
  (get_unaligned_be16(&sbp->sb_uuid.b[8]) << 16) |
   get_unaligned_be16(&sbp->sb_uuid.b[4]);
 mp->m_fixedfsid[1] = get_unaligned_be32(&sbp->sb_uuid.b[0]);

 error = xfs_da_mount(mp);
 if (error) {
  xfs_warn(mp, "Failed dir/attr init: %d", error);
  goto out_remove_uuid;
 }




 xfs_trans_init(mp);




 error = xfs_initialize_perag(mp, sbp->sb_agcount, &mp->m_maxagi);
 if (error) {
  xfs_warn(mp, "Failed per-ag init: %d", error);
  goto out_free_dir;
 }

 if (!sbp->sb_logblocks) {
  xfs_warn(mp, "no log defined");
  XFS_ERROR_REPORT("xfs_mountfs", XFS_ERRLEVEL_LOW, mp);
  error = -EFSCORRUPTED;
  goto out_free_perag;
 }






 error = xfs_log_mount(mp, mp->m_logdev_targp,
         XFS_FSB_TO_DADDR(mp, sbp->sb_logstart),
         XFS_FSB_TO_BB(mp, sbp->sb_logblocks));
 if (error) {
  xfs_warn(mp, "log mount failed");
  goto out_fail_wait;
 }


 error = xfs_check_summary_counts(mp);
 if (error)
  goto out_log_dealloc;





 error = xfs_iget(mp, ((void*)0), sbp->sb_rootino, XFS_IGET_UNTRUSTED,
    XFS_ILOCK_EXCL, &rip);
 if (error) {
  xfs_warn(mp,
   "Failed to read root inode 0x%llx, error %d",
   sbp->sb_rootino, -error);
  goto out_log_dealloc;
 }

 ASSERT(rip != ((void*)0));

 if (unlikely(!S_ISDIR(VFS_I(rip)->i_mode))) {
  xfs_warn(mp, "corrupted root inode %llu: not a directory",
   (unsigned long long)rip->i_ino);
  xfs_iunlock(rip, XFS_ILOCK_EXCL);
  XFS_ERROR_REPORT("xfs_mountfs_int(2)", XFS_ERRLEVEL_LOW,
     mp);
  error = -EFSCORRUPTED;
  goto out_rele_rip;
 }
 mp->m_rootip = rip;

 xfs_iunlock(rip, XFS_ILOCK_EXCL);




 error = xfs_rtmount_inodes(mp);
 if (error) {



  xfs_warn(mp, "failed to read RT inodes");
  goto out_rele_rip;
 }






 if (mp->m_update_sb && !(mp->m_flags & XFS_MOUNT_RDONLY)) {
  error = xfs_sync_sb(mp, 0);
  if (error) {
   xfs_warn(mp, "failed to write sb changes");
   goto out_rtunmount;
  }
 }




 if (XFS_IS_QUOTA_RUNNING(mp)) {
  error = xfs_qm_newmount(mp, &quotamount, &quotaflags);
  if (error)
   goto out_rtunmount;
 } else {
  ASSERT(!XFS_IS_QUOTA_ON(mp));






  if (mp->m_sb.sb_qflags & XFS_ALL_QUOTA_ACCT) {
   xfs_notice(mp, "resetting quota flags");
   error = xfs_mount_reset_sbqflags(mp);
   if (error)
    goto out_rtunmount;
  }
 }






 error = xfs_log_mount_finish(mp);
 if (error) {
  xfs_warn(mp, "log mount finish failed");
  goto out_rtunmount;
 }
 if ((mp->m_flags & (XFS_MOUNT_RDONLY|XFS_MOUNT_NORECOVERY)) ==
       XFS_MOUNT_RDONLY) {
  xfs_quiesce_attr(mp);
 }




 if (quotamount) {
  ASSERT(mp->m_qflags == 0);
  mp->m_qflags = quotaflags;

  xfs_qm_mount_quotas(mp);
 }
 if (!(mp->m_flags & XFS_MOUNT_RDONLY)) {
  resblks = xfs_default_resblks(mp);
  error = xfs_reserve_blocks(mp, &resblks, ((void*)0));
  if (error)
   xfs_warn(mp,
 "Unable to allocate reserve blocks. Continuing without reserve pool.");


  error = xfs_reflink_recover_cow(mp);
  if (error) {
   xfs_err(mp,
 "Error %d recovering leftover CoW allocations.", error);
   xfs_force_shutdown(mp, SHUTDOWN_CORRUPT_INCORE);
   goto out_quota;
  }


  error = xfs_fs_reserve_ag_blocks(mp);
  if (error && error != -ENOSPC)
   goto out_agresv;
 }

 return 0;

 out_agresv:
 xfs_fs_unreserve_ag_blocks(mp);
 out_quota:
 xfs_qm_unmount_quotas(mp);
 out_rtunmount:
 xfs_rtunmount_inodes(mp);
 out_rele_rip:
 xfs_irele(rip);

 xfs_qm_unmount(mp);
 cancel_delayed_work_sync(&mp->m_reclaim_work);
 xfs_reclaim_inodes(mp, SYNC_WAIT);
 xfs_health_unmount(mp);
 out_log_dealloc:
 mp->m_flags |= XFS_MOUNT_UNMOUNTING;
 xfs_log_mount_cancel(mp);
 out_fail_wait:
 if (mp->m_logdev_targp && mp->m_logdev_targp != mp->m_ddev_targp)
  xfs_wait_buftarg(mp->m_logdev_targp);
 xfs_wait_buftarg(mp->m_ddev_targp);
 out_free_perag:
 xfs_free_perag(mp);
 out_free_dir:
 xfs_da_unmount(mp);
 out_remove_uuid:
 xfs_uuid_unmount(mp);
 out_remove_errortag:
 xfs_errortag_del(mp);
 out_remove_error_sysfs:
 xfs_error_sysfs_del(mp);
 out_del_stats:
 xfs_sysfs_del(&mp->m_stats.xs_kobj);
 out_remove_sysfs:
 xfs_sysfs_del(&mp->m_kobj);
 out:
 return error;
}
