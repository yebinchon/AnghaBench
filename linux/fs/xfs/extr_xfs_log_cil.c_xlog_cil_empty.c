
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlog {struct xfs_cil* l_cilp; } ;
struct xfs_cil {int xc_push_lock; int xc_cil; } ;


 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

bool
xlog_cil_empty(
 struct xlog *log)
{
 struct xfs_cil *cil = log->l_cilp;
 bool empty = 0;

 spin_lock(&cil->xc_push_lock);
 if (list_empty(&cil->xc_cil))
  empty = 1;
 spin_unlock(&cil->xc_push_lock);
 return empty;
}
