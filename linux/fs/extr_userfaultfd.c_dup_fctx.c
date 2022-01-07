
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long reserved1; } ;
struct TYPE_5__ {TYPE_1__ reserved; } ;
struct TYPE_6__ {TYPE_2__ arg; int event; } ;
struct userfaultfd_wait_queue {TYPE_3__ msg; } ;
struct userfaultfd_fork_ctx {scalar_t__ new; struct userfaultfd_ctx* orig; } ;
struct userfaultfd_ctx {int dummy; } ;


 int UFFD_EVENT_FORK ;
 int msg_init (TYPE_3__*) ;
 int userfaultfd_event_wait_completion (struct userfaultfd_ctx*,struct userfaultfd_wait_queue*) ;

__attribute__((used)) static void dup_fctx(struct userfaultfd_fork_ctx *fctx)
{
 struct userfaultfd_ctx *ctx = fctx->orig;
 struct userfaultfd_wait_queue ewq;

 msg_init(&ewq.msg);

 ewq.msg.event = UFFD_EVENT_FORK;
 ewq.msg.arg.reserved.reserved1 = (unsigned long)fctx->new;

 userfaultfd_event_wait_completion(ctx, &ewq);
}
