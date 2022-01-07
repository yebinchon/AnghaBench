
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xlog {TYPE_2__* l_cilp; } ;
struct TYPE_4__ {TYPE_1__* xc_ctx; } ;
struct TYPE_3__ {int sequence; int ticket; } ;


 int xlog_cil_ticket_alloc (struct xlog*) ;

void
xlog_cil_init_post_recovery(
 struct xlog *log)
{
 log->l_cilp->xc_ctx->ticket = xlog_cil_ticket_alloc(log);
 log->l_cilp->xc_ctx->sequence = 1;
}
