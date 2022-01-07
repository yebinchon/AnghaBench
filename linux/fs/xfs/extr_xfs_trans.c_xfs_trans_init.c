
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int dummy; } ;


 int M_RES (struct xfs_mount*) ;
 int xfs_trans_resv_calc (struct xfs_mount*,int ) ;
 int xfs_trans_trace_reservations (struct xfs_mount*) ;

void
xfs_trans_init(
 struct xfs_mount *mp)
{
 xfs_trans_resv_calc(mp, M_RES(mp));
 xfs_trans_trace_reservations(mp);
}
