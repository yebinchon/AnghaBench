
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ xfs_extlen_t ;
typedef int xfs_agnumber_t ;
struct xfs_trans {int dummy; } ;
struct TYPE_5__ {scalar_t__ ar_asked; } ;
struct TYPE_4__ {scalar_t__ ar_asked; } ;
struct xfs_perag {scalar_t__ pagf_freeblks; scalar_t__ pagf_flcount; int pag_agno; struct xfs_mount* pag_mount; TYPE_2__ pag_rmapbt_resv; TYPE_1__ pag_meta_resv; } ;
struct xfs_mount {int m_finobt_nores; } ;
struct TYPE_6__ {scalar_t__ ar_reserved; } ;


 int ASSERT (int) ;
 int XFS_AG_RESV_METADATA ;
 int XFS_AG_RESV_RMAPBT ;
 int __xfs_ag_resv_init (struct xfs_perag*,int ,scalar_t__,scalar_t__) ;
 int xfs_alloc_pagf_init (struct xfs_mount*,struct xfs_trans*,int ,int ) ;
 int xfs_finobt_calc_reserves (struct xfs_mount*,struct xfs_trans*,int ,scalar_t__*,scalar_t__*) ;
 TYPE_3__* xfs_perag_resv (struct xfs_perag*,int ) ;
 int xfs_refcountbt_calc_reserves (struct xfs_mount*,struct xfs_trans*,int ,scalar_t__*,scalar_t__*) ;
 int xfs_rmapbt_calc_reserves (struct xfs_mount*,struct xfs_trans*,int ,scalar_t__*,scalar_t__*) ;

int
xfs_ag_resv_init(
 struct xfs_perag *pag,
 struct xfs_trans *tp)
{
 struct xfs_mount *mp = pag->pag_mount;
 xfs_agnumber_t agno = pag->pag_agno;
 xfs_extlen_t ask;
 xfs_extlen_t used;
 int error = 0;


 if (pag->pag_meta_resv.ar_asked == 0) {
  ask = used = 0;

  error = xfs_refcountbt_calc_reserves(mp, tp, agno, &ask, &used);
  if (error)
   goto out;

  error = xfs_finobt_calc_reserves(mp, tp, agno, &ask, &used);
  if (error)
   goto out;

  error = __xfs_ag_resv_init(pag, XFS_AG_RESV_METADATA,
    ask, used);
  if (error) {







   ask = used = 0;

   mp->m_finobt_nores = 1;

   error = xfs_refcountbt_calc_reserves(mp, tp, agno, &ask,
     &used);
   if (error)
    goto out;

   error = __xfs_ag_resv_init(pag, XFS_AG_RESV_METADATA,
     ask, used);
   if (error)
    goto out;
  }
 }


 if (pag->pag_rmapbt_resv.ar_asked == 0) {
  ask = used = 0;

  error = xfs_rmapbt_calc_reserves(mp, tp, agno, &ask, &used);
  if (error)
   goto out;

  error = __xfs_ag_resv_init(pag, XFS_AG_RESV_RMAPBT, ask, used);
  if (error)
   goto out;
 }
out:
 return error;
}
