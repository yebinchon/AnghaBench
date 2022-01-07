
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_failaddr_t ;
typedef int xfs_dqid_t ;
typedef int uint ;
struct TYPE_2__ {int sb_meta_uuid; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_dqblk {int dd_diskdq; int dd_uuid; } ;


 int __this_address ;
 int uuid_equal (int *,int *) ;
 int xfs_dquot_verify (struct xfs_mount*,int *,int ,int ) ;
 scalar_t__ xfs_sb_version_hascrc (TYPE_1__*) ;

xfs_failaddr_t
xfs_dqblk_verify(
 struct xfs_mount *mp,
 struct xfs_dqblk *dqb,
 xfs_dqid_t id,
 uint type)
{
 if (xfs_sb_version_hascrc(&mp->m_sb) &&
     !uuid_equal(&dqb->dd_uuid, &mp->m_sb.sb_meta_uuid))
  return __this_address;

 return xfs_dquot_verify(mp, &dqb->dd_diskdq, id, type);
}
