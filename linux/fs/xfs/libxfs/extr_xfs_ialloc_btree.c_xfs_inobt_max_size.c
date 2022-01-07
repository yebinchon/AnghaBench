
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_extlen_t ;
typedef scalar_t__ xfs_agnumber_t ;
typedef scalar_t__ xfs_agblock_t ;
typedef int uint64_t ;
struct TYPE_3__ {int sb_inopblock; scalar_t__ sb_logblocks; scalar_t__ sb_logstart; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct TYPE_4__ {scalar_t__* inobt_mxr; int inobt_mnr; } ;


 TYPE_2__* M_IGEO (struct xfs_mount*) ;
 scalar_t__ XFS_FSB_TO_AGNO (struct xfs_mount*,scalar_t__) ;
 int XFS_INODES_PER_CHUNK ;
 scalar_t__ xfs_ag_block_count (struct xfs_mount*,scalar_t__) ;
 int xfs_btree_calc_size (int ,int) ;

__attribute__((used)) static xfs_extlen_t
xfs_inobt_max_size(
 struct xfs_mount *mp,
 xfs_agnumber_t agno)
{
 xfs_agblock_t agblocks = xfs_ag_block_count(mp, agno);


 if (M_IGEO(mp)->inobt_mxr[0] == 0)
  return 0;






 if (mp->m_sb.sb_logstart &&
     XFS_FSB_TO_AGNO(mp, mp->m_sb.sb_logstart) == agno)
  agblocks -= mp->m_sb.sb_logblocks;

 return xfs_btree_calc_size(M_IGEO(mp)->inobt_mnr,
    (uint64_t)agblocks * mp->m_sb.sb_inopblock /
     XFS_INODES_PER_CHUNK);
}
