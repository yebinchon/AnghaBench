
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_extlen_t ;
typedef int xfs_agnumber_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int m_sb; } ;


 int XFS_BTNUM_FINO ;
 int xfs_inobt_count_blocks (struct xfs_mount*,struct xfs_trans*,int ,int ,scalar_t__*) ;
 scalar_t__ xfs_inobt_max_size (struct xfs_mount*,int ) ;
 int xfs_sb_version_hasfinobt (int *) ;

int
xfs_finobt_calc_reserves(
 struct xfs_mount *mp,
 struct xfs_trans *tp,
 xfs_agnumber_t agno,
 xfs_extlen_t *ask,
 xfs_extlen_t *used)
{
 xfs_extlen_t tree_len = 0;
 int error;

 if (!xfs_sb_version_hasfinobt(&mp->m_sb))
  return 0;

 error = xfs_inobt_count_blocks(mp, tp, agno, XFS_BTNUM_FINO, &tree_len);
 if (error)
  return error;

 *ask += xfs_inobt_max_size(mp, agno);
 *used += tree_len;
 return 0;
}
