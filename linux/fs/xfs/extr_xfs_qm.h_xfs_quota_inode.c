
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* m_quotainfo; } ;
typedef TYPE_2__ xfs_mount_t ;
typedef int uint ;
struct xfs_inode {int dummy; } ;
struct TYPE_4__ {struct xfs_inode* qi_pquotaip; struct xfs_inode* qi_gquotaip; struct xfs_inode* qi_uquotaip; } ;


 int ASSERT (int ) ;
 int XFS_DQ_ALLTYPES ;




__attribute__((used)) static inline struct xfs_inode *
xfs_quota_inode(xfs_mount_t *mp, uint dq_flags)
{
 switch (dq_flags & XFS_DQ_ALLTYPES) {
 case 128:
  return mp->m_quotainfo->qi_uquotaip;
 case 130:
  return mp->m_quotainfo->qi_gquotaip;
 case 129:
  return mp->m_quotainfo->qi_pquotaip;
 default:
  ASSERT(0);
 }
 return ((void*)0);
}
