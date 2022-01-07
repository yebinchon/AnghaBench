
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xlog {TYPE_1__* l_mp; struct xfs_cil* l_cilp; } ;
struct xfs_cil {scalar_t__ xc_push_seq; scalar_t__ xc_current_sequence; int xc_push_lock; int xc_push_work; TYPE_2__* xc_ctx; int xc_cil; } ;
struct TYPE_4__ {scalar_t__ space_used; } ;
struct TYPE_3__ {int m_cil_workqueue; } ;


 int ASSERT (int) ;
 scalar_t__ XLOG_CIL_SPACE_LIMIT (struct xlog*) ;
 int list_empty (int *) ;
 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
xlog_cil_push_background(
 struct xlog *log)
{
 struct xfs_cil *cil = log->l_cilp;





 ASSERT(!list_empty(&cil->xc_cil));





 if (cil->xc_ctx->space_used < XLOG_CIL_SPACE_LIMIT(log))
  return;

 spin_lock(&cil->xc_push_lock);
 if (cil->xc_push_seq < cil->xc_current_sequence) {
  cil->xc_push_seq = cil->xc_current_sequence;
  queue_work(log->l_mp->m_cil_workqueue, &cil->xc_push_work);
 }
 spin_unlock(&cil->xc_push_lock);

}
