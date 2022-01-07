
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_agnumber_t ;
struct xfs_perag {int dummy; } ;
struct xfs_mount {int m_sb; } ;


 int ENOSPC ;
 int XFS_AG_RESV_METADATA ;
 int XFS_AG_RESV_RMAPBT ;
 scalar_t__ xfs_ag_resv_critical (struct xfs_perag*,int ) ;
 struct xfs_perag* xfs_perag_get (struct xfs_mount*,int ) ;
 int xfs_perag_put (struct xfs_perag*) ;
 int xfs_sb_version_hasrmapbt (int *) ;

__attribute__((used)) static int
xfs_reflink_ag_has_free_space(
 struct xfs_mount *mp,
 xfs_agnumber_t agno)
{
 struct xfs_perag *pag;
 int error = 0;

 if (!xfs_sb_version_hasrmapbt(&mp->m_sb))
  return 0;

 pag = xfs_perag_get(mp, agno);
 if (xfs_ag_resv_critical(pag, XFS_AG_RESV_RMAPBT) ||
     xfs_ag_resv_critical(pag, XFS_AG_RESV_METADATA))
  error = -ENOSPC;
 xfs_perag_put(pag);
 return error;
}
