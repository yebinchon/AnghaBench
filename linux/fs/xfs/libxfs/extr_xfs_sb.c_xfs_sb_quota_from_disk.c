
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_sb {scalar_t__ sb_uquotino; scalar_t__ sb_gquotino; scalar_t__ sb_pquotino; int sb_qflags; } ;


 scalar_t__ NULLFSINO ;
 int XFS_GQUOTA_CHKD ;
 int XFS_GQUOTA_ENFD ;
 int XFS_OQUOTA_CHKD ;
 int XFS_OQUOTA_ENFD ;
 int XFS_PQUOTA_ACCT ;
 int XFS_PQUOTA_CHKD ;
 int XFS_PQUOTA_ENFD ;
 scalar_t__ xfs_sb_version_has_pquotino (struct xfs_sb*) ;

void
xfs_sb_quota_from_disk(struct xfs_sb *sbp)
{
 if (sbp->sb_uquotino == 0)
  sbp->sb_uquotino = NULLFSINO;
 if (sbp->sb_gquotino == 0)
  sbp->sb_gquotino = NULLFSINO;
 if (sbp->sb_pquotino == 0)
  sbp->sb_pquotino = NULLFSINO;





 if (xfs_sb_version_has_pquotino(sbp))
  return;

 if (sbp->sb_qflags & XFS_OQUOTA_ENFD)
  sbp->sb_qflags |= (sbp->sb_qflags & XFS_PQUOTA_ACCT) ?
     XFS_PQUOTA_ENFD : XFS_GQUOTA_ENFD;
 if (sbp->sb_qflags & XFS_OQUOTA_CHKD)
  sbp->sb_qflags |= (sbp->sb_qflags & XFS_PQUOTA_ACCT) ?
     XFS_PQUOTA_CHKD : XFS_GQUOTA_CHKD;
 sbp->sb_qflags &= ~(XFS_OQUOTA_ENFD | XFS_OQUOTA_CHKD);

 if (sbp->sb_qflags & XFS_PQUOTA_ACCT &&
     sbp->sb_gquotino != NULLFSINO) {
  sbp->sb_pquotino = sbp->sb_gquotino;
  sbp->sb_gquotino = NULLFSINO;
 }
}
