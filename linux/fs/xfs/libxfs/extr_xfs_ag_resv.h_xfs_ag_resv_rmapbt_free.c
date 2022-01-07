
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_agnumber_t ;
struct xfs_perag {int dummy; } ;
struct xfs_mount {int dummy; } ;


 int XFS_AG_RESV_RMAPBT ;
 int xfs_ag_resv_free_extent (struct xfs_perag*,int ,int *,int) ;
 struct xfs_perag* xfs_perag_get (struct xfs_mount*,int ) ;
 int xfs_perag_put (struct xfs_perag*) ;

__attribute__((used)) static inline void
xfs_ag_resv_rmapbt_free(
 struct xfs_mount *mp,
 xfs_agnumber_t agno)
{
 struct xfs_perag *pag;

 pag = xfs_perag_get(mp, agno);
 xfs_ag_resv_free_extent(pag, XFS_AG_RESV_RMAPBT, ((void*)0), 1);
 xfs_perag_put(pag);
}
