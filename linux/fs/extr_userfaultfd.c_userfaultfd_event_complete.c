
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ event; } ;
struct userfaultfd_wait_queue {int wq; TYPE_1__ msg; } ;
struct userfaultfd_ctx {int event_wqh; } ;


 int __remove_wait_queue (int *,int *) ;
 int wake_up_locked (int *) ;

__attribute__((used)) static void userfaultfd_event_complete(struct userfaultfd_ctx *ctx,
           struct userfaultfd_wait_queue *ewq)
{
 ewq->msg.event = 0;
 wake_up_locked(&ctx->event_wqh);
 __remove_wait_queue(&ctx->event_wqh, &ewq->wq);
}
