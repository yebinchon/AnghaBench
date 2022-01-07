
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_lsn_t ;
struct xlog {TYPE_1__* l_mp; struct xfs_cil* l_cilp; } ;
struct xfs_cil {scalar_t__ xc_current_sequence; scalar_t__ xc_push_seq; int xc_push_lock; int xc_push_work; int xc_cil; } ;
struct TYPE_2__ {int m_cil_workqueue; } ;


 int ASSERT (int) ;
 int flush_work (int *) ;
 scalar_t__ list_empty (int *) ;
 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
xlog_cil_push_now(
 struct xlog *log,
 xfs_lsn_t push_seq)
{
 struct xfs_cil *cil = log->l_cilp;

 if (!cil)
  return;

 ASSERT(push_seq && push_seq <= cil->xc_current_sequence);


 flush_work(&cil->xc_push_work);





 spin_lock(&cil->xc_push_lock);
 if (list_empty(&cil->xc_cil) || push_seq <= cil->xc_push_seq) {
  spin_unlock(&cil->xc_push_lock);
  return;
 }

 cil->xc_push_seq = push_seq;
 queue_work(log->l_mp->m_cil_workqueue, &cil->xc_push_work);
 spin_unlock(&cil->xc_push_lock);
}
