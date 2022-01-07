
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_agnumber_t ;
struct xfs_perag {int dummy; } ;
struct TYPE_2__ {scalar_t__ sb_agcount; } ;
struct xfs_mount {int m_finobt_nores; TYPE_1__ m_sb; } ;


 int ENOSPC ;
 int SHUTDOWN_CORRUPT_INCORE ;
 int xfs_ag_resv_init (struct xfs_perag*,int *) ;
 int xfs_force_shutdown (struct xfs_mount*,int ) ;
 struct xfs_perag* xfs_perag_get (struct xfs_mount*,scalar_t__) ;
 int xfs_perag_put (struct xfs_perag*) ;
 int xfs_warn (struct xfs_mount*,char*,int) ;

int
xfs_fs_reserve_ag_blocks(
 struct xfs_mount *mp)
{
 xfs_agnumber_t agno;
 struct xfs_perag *pag;
 int error = 0;
 int err2;

 mp->m_finobt_nores = 0;
 for (agno = 0; agno < mp->m_sb.sb_agcount; agno++) {
  pag = xfs_perag_get(mp, agno);
  err2 = xfs_ag_resv_init(pag, ((void*)0));
  xfs_perag_put(pag);
  if (err2 && !error)
   error = err2;
 }

 if (error && error != -ENOSPC) {
  xfs_warn(mp,
 "Error %d reserving per-AG metadata reserve pool.", error);
  xfs_force_shutdown(mp, SHUTDOWN_CORRUPT_INCORE);
 }

 return error;
}
