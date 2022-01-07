
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_trans {int t_dfops; struct xfs_mount* t_mountp; } ;
struct xfs_mount {int dummy; } ;


 int _RET_IP_ ;
 int trace_xfs_defer_cancel (struct xfs_trans*,int ) ;
 int xfs_defer_cancel_list (struct xfs_mount*,int *) ;

void
xfs_defer_cancel(
 struct xfs_trans *tp)
{
 struct xfs_mount *mp = tp->t_mountp;

 trace_xfs_defer_cancel(tp, _RET_IP_);
 xfs_defer_cancel_list(mp, &tp->t_dfops);
}
