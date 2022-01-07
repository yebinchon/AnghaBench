
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_extlen_t ;
struct xfs_perag {scalar_t__ pagf_freeblks; } ;
typedef enum xfs_ag_resv_type { ____Placeholder_xfs_ag_resv_type } xfs_ag_resv_type ;


 int XFS_AG_RESV_METADATA ;
 int XFS_AG_RESV_RMAPBT ;
 int xfs_ag_resv_critical (struct xfs_perag*,int ) ;
 scalar_t__ xfs_ag_resv_needed (struct xfs_perag*,int) ;

bool
xrep_ag_has_space(
 struct xfs_perag *pag,
 xfs_extlen_t nr_blocks,
 enum xfs_ag_resv_type type)
{
 return !xfs_ag_resv_critical(pag, XFS_AG_RESV_RMAPBT) &&
  !xfs_ag_resv_critical(pag, XFS_AG_RESV_METADATA) &&
  pag->pagf_freeblks > xfs_ag_resv_needed(pag, type) + nr_blocks;
}
