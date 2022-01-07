
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_agnumber_t ;
struct xfs_perag {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_alloc_arg {int len; int * member_0; } ;


 int XFS_AG_RESV_RMAPBT ;
 int xfs_ag_resv_alloc_extent (struct xfs_perag*,int ,struct xfs_alloc_arg*) ;
 struct xfs_perag* xfs_perag_get (struct xfs_mount*,int ) ;
 int xfs_perag_put (struct xfs_perag*) ;

__attribute__((used)) static inline void
xfs_ag_resv_rmapbt_alloc(
 struct xfs_mount *mp,
 xfs_agnumber_t agno)
{
 struct xfs_alloc_arg args = { ((void*)0) };
 struct xfs_perag *pag;

 args.len = 1;
 pag = xfs_perag_get(mp, agno);
 xfs_ag_resv_alloc_extent(pag, XFS_AG_RESV_RMAPBT, &args);
 xfs_perag_put(pag);
}
