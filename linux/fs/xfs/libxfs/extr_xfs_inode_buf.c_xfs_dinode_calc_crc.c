
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int sb_inodesize; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_dinode {int di_version; int di_crc; } ;


 int ASSERT (int ) ;
 int XFS_DINODE_CRC_OFF ;
 int xfs_end_cksum (int ) ;
 int xfs_sb_version_hascrc (TYPE_1__*) ;
 int xfs_start_cksum_update (char*,int ,int ) ;

void
xfs_dinode_calc_crc(
 struct xfs_mount *mp,
 struct xfs_dinode *dip)
{
 uint32_t crc;

 if (dip->di_version < 3)
  return;

 ASSERT(xfs_sb_version_hascrc(&mp->m_sb));
 crc = xfs_start_cksum_update((char *)dip, mp->m_sb.sb_inodesize,
         XFS_DINODE_CRC_OFF);
 dip->di_crc = xfs_end_cksum(crc);
}
