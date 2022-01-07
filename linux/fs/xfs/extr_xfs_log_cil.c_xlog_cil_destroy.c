
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xlog {TYPE_1__* l_cilp; } ;
struct TYPE_2__ {int xc_cil; struct TYPE_2__* xc_ctx; scalar_t__ ticket; } ;


 int ASSERT (int ) ;
 int kmem_free (TYPE_1__*) ;
 int list_empty (int *) ;
 int xfs_log_ticket_put (scalar_t__) ;

void
xlog_cil_destroy(
 struct xlog *log)
{
 if (log->l_cilp->xc_ctx) {
  if (log->l_cilp->xc_ctx->ticket)
   xfs_log_ticket_put(log->l_cilp->xc_ctx->ticket);
  kmem_free(log->l_cilp->xc_ctx);
 }

 ASSERT(list_empty(&log->l_cilp->xc_cil));
 kmem_free(log->l_cilp);
}
