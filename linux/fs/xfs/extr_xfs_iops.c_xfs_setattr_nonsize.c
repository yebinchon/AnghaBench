
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct xfs_dquot {int dummy; } ;
typedef struct xfs_dquot xfs_trans_t ;
struct TYPE_14__ {int m_flags; int m_sb; } ;
typedef TYPE_2__ xfs_mount_t ;
typedef int uint ;
struct TYPE_13__ {int di_gid; int di_uid; } ;
struct xfs_inode {TYPE_1__ i_d; int i_gdquot; int i_udquot; TYPE_2__* i_mount; } ;
struct inode {int i_mode; int i_gid; int i_uid; } ;
struct iattr {int ia_valid; int ia_uid; int ia_gid; } ;
typedef int kuid_t ;
typedef int kgid_t ;
struct TYPE_12__ {int tr_ichange; } ;


 int ASSERT (int) ;
 int ATTR_ATIME ;
 int ATTR_CTIME ;
 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_MTIME ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 int CAP_FOWNER ;
 int CAP_FSETID ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 TYPE_10__* M_RES (TYPE_2__*) ;
 int S_ISGID ;
 int S_ISUID ;
 struct inode* VFS_I (struct xfs_inode*) ;
 int XFS_ATTR_NOACL ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOG_CORE ;
 scalar_t__ XFS_IS_GQUOTA_ON (TYPE_2__*) ;
 int XFS_IS_PQUOTA_ON (TYPE_2__*) ;
 scalar_t__ XFS_IS_QUOTA_ON (TYPE_2__*) ;
 scalar_t__ XFS_IS_QUOTA_RUNNING (TYPE_2__*) ;
 scalar_t__ XFS_IS_UQUOTA_ON (TYPE_2__*) ;
 int XFS_MOUNT_WSYNC ;
 int XFS_QMOPT_FORCE_RES ;
 int XFS_QMOPT_GQUOTA ;
 int XFS_QMOPT_UQUOTA ;
 int XFS_STATS_INC (TYPE_2__*,int ) ;
 scalar_t__ capable (int ) ;
 int gid_eq (int ,int ) ;
 int posix_acl_chmod (struct inode*,int) ;
 int uid_eq (int ,int ) ;
 int xfs_get_projid (struct xfs_inode*) ;
 int xfs_ilock (struct xfs_inode*,int ) ;
 int xfs_iunlock (struct xfs_inode*,int ) ;
 int xfs_kgid_to_gid (int ) ;
 int xfs_kuid_to_uid (int ) ;
 int xfs_qm_dqrele (struct xfs_dquot*) ;
 struct xfs_dquot* xfs_qm_vop_chown (struct xfs_dquot*,struct xfs_inode*,int *,struct xfs_dquot*) ;
 int xfs_qm_vop_chown_reserve (struct xfs_dquot*,struct xfs_inode*,struct xfs_dquot*,struct xfs_dquot*,int *,int ) ;
 int xfs_qm_vop_dqalloc (struct xfs_inode*,int ,int ,int ,int ,struct xfs_dquot**,struct xfs_dquot**,int *) ;
 scalar_t__ xfs_sb_version_has_pquotino (int *) ;
 int xfs_setattr_mode (struct xfs_inode*,struct iattr*) ;
 int xfs_setattr_time (struct xfs_inode*,struct iattr*) ;
 int xfs_trans_alloc (TYPE_2__*,int *,int ,int ,int ,struct xfs_dquot**) ;
 int xfs_trans_cancel (struct xfs_dquot*) ;
 int xfs_trans_commit (struct xfs_dquot*) ;
 int xfs_trans_ijoin (struct xfs_dquot*,struct xfs_inode*,int ) ;
 int xfs_trans_log_inode (struct xfs_dquot*,struct xfs_inode*,int ) ;
 int xfs_trans_set_sync (struct xfs_dquot*) ;
 int xs_ig_attrchg ;

int
xfs_setattr_nonsize(
 struct xfs_inode *ip,
 struct iattr *iattr,
 int flags)
{
 xfs_mount_t *mp = ip->i_mount;
 struct inode *inode = VFS_I(ip);
 int mask = iattr->ia_valid;
 xfs_trans_t *tp;
 int error;
 kuid_t uid = GLOBAL_ROOT_UID, iuid = GLOBAL_ROOT_UID;
 kgid_t gid = GLOBAL_ROOT_GID, igid = GLOBAL_ROOT_GID;
 struct xfs_dquot *udqp = ((void*)0), *gdqp = ((void*)0);
 struct xfs_dquot *olddquot1 = ((void*)0), *olddquot2 = ((void*)0);

 ASSERT((mask & ATTR_SIZE) == 0);
 if (XFS_IS_QUOTA_ON(mp) && (mask & (ATTR_UID|ATTR_GID))) {
  uint qflags = 0;

  if ((mask & ATTR_UID) && XFS_IS_UQUOTA_ON(mp)) {
   uid = iattr->ia_uid;
   qflags |= XFS_QMOPT_UQUOTA;
  } else {
   uid = inode->i_uid;
  }
  if ((mask & ATTR_GID) && XFS_IS_GQUOTA_ON(mp)) {
   gid = iattr->ia_gid;
   qflags |= XFS_QMOPT_GQUOTA;
  } else {
   gid = inode->i_gid;
  }






  ASSERT(udqp == ((void*)0));
  ASSERT(gdqp == ((void*)0));
  error = xfs_qm_vop_dqalloc(ip, xfs_kuid_to_uid(uid),
        xfs_kgid_to_gid(gid),
        xfs_get_projid(ip),
        qflags, &udqp, &gdqp, ((void*)0));
  if (error)
   return error;
 }

 error = xfs_trans_alloc(mp, &M_RES(mp)->tr_ichange, 0, 0, 0, &tp);
 if (error)
  goto out_dqrele;

 xfs_ilock(ip, XFS_ILOCK_EXCL);
 xfs_trans_ijoin(tp, ip, 0);




 if (mask & (ATTR_UID|ATTR_GID)) {






  iuid = inode->i_uid;
  igid = inode->i_gid;
  gid = (mask & ATTR_GID) ? iattr->ia_gid : igid;
  uid = (mask & ATTR_UID) ? iattr->ia_uid : iuid;





  if (XFS_IS_QUOTA_RUNNING(mp) &&
      ((XFS_IS_UQUOTA_ON(mp) && !uid_eq(iuid, uid)) ||
       (XFS_IS_GQUOTA_ON(mp) && !gid_eq(igid, gid)))) {
   ASSERT(tp);
   error = xfs_qm_vop_chown_reserve(tp, ip, udqp, gdqp,
      ((void*)0), capable(CAP_FOWNER) ?
      XFS_QMOPT_FORCE_RES : 0);
   if (error)
    goto out_cancel;
  }
 }




 if (mask & (ATTR_UID|ATTR_GID)) {






  if ((inode->i_mode & (S_ISUID|S_ISGID)) &&
      !capable(CAP_FSETID))
   inode->i_mode &= ~(S_ISUID|S_ISGID);





  if (!uid_eq(iuid, uid)) {
   if (XFS_IS_QUOTA_RUNNING(mp) && XFS_IS_UQUOTA_ON(mp)) {
    ASSERT(mask & ATTR_UID);
    ASSERT(udqp);
    olddquot1 = xfs_qm_vop_chown(tp, ip,
       &ip->i_udquot, udqp);
   }
   ip->i_d.di_uid = xfs_kuid_to_uid(uid);
   inode->i_uid = uid;
  }
  if (!gid_eq(igid, gid)) {
   if (XFS_IS_QUOTA_RUNNING(mp) && XFS_IS_GQUOTA_ON(mp)) {
    ASSERT(xfs_sb_version_has_pquotino(&mp->m_sb) ||
           !XFS_IS_PQUOTA_ON(mp));
    ASSERT(mask & ATTR_GID);
    ASSERT(gdqp);
    olddquot2 = xfs_qm_vop_chown(tp, ip,
       &ip->i_gdquot, gdqp);
   }
   ip->i_d.di_gid = xfs_kgid_to_gid(gid);
   inode->i_gid = gid;
  }
 }

 if (mask & ATTR_MODE)
  xfs_setattr_mode(ip, iattr);
 if (mask & (ATTR_ATIME|ATTR_CTIME|ATTR_MTIME))
  xfs_setattr_time(ip, iattr);

 xfs_trans_log_inode(tp, ip, XFS_ILOG_CORE);

 XFS_STATS_INC(mp, xs_ig_attrchg);

 if (mp->m_flags & XFS_MOUNT_WSYNC)
  xfs_trans_set_sync(tp);
 error = xfs_trans_commit(tp);

 xfs_iunlock(ip, XFS_ILOCK_EXCL);




 xfs_qm_dqrele(olddquot1);
 xfs_qm_dqrele(olddquot2);
 xfs_qm_dqrele(udqp);
 xfs_qm_dqrele(gdqp);

 if (error)
  return error;
 if ((mask & ATTR_MODE) && !(flags & XFS_ATTR_NOACL)) {
  error = posix_acl_chmod(inode, inode->i_mode);
  if (error)
   return error;
 }

 return 0;

out_cancel:
 xfs_trans_cancel(tp);
 xfs_iunlock(ip, XFS_ILOCK_EXCL);
out_dqrele:
 xfs_qm_dqrele(udqp);
 xfs_qm_dqrele(gdqp);
 return error;
}
