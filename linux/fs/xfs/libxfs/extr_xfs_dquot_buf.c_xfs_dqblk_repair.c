
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_dqid_t ;
typedef int xfs_dqblk_t ;
typedef int uint ;
struct TYPE_4__ {int sb_meta_uuid; } ;
struct xfs_mount {TYPE_2__ m_sb; } ;
struct TYPE_3__ {int d_id; int d_flags; int d_version; int d_magic; } ;
struct xfs_dqblk {int dd_uuid; TYPE_1__ dd_diskdq; } ;


 int ASSERT (int) ;
 int XFS_DQUOT_CRC_OFF ;
 int XFS_DQUOT_MAGIC ;
 int XFS_DQUOT_VERSION ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int) ;
 int memset (struct xfs_dqblk*,int ,int) ;
 int uuid_copy (int *,int *) ;
 scalar_t__ xfs_sb_version_hascrc (TYPE_2__*) ;
 int xfs_update_cksum (char*,int,int ) ;

void
xfs_dqblk_repair(
 struct xfs_mount *mp,
 struct xfs_dqblk *dqb,
 xfs_dqid_t id,
 uint type)
{



 ASSERT(id != -1);
 memset(dqb, 0, sizeof(xfs_dqblk_t));

 dqb->dd_diskdq.d_magic = cpu_to_be16(XFS_DQUOT_MAGIC);
 dqb->dd_diskdq.d_version = XFS_DQUOT_VERSION;
 dqb->dd_diskdq.d_flags = type;
 dqb->dd_diskdq.d_id = cpu_to_be32(id);

 if (xfs_sb_version_hascrc(&mp->m_sb)) {
  uuid_copy(&dqb->dd_uuid, &mp->m_sb.sb_meta_uuid);
  xfs_update_cksum((char *)dqb, sizeof(struct xfs_dqblk),
     XFS_DQUOT_CRC_OFF);
 }
}
