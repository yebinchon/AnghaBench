
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userfaultfd_ctx {int refile_seq; int fd_wqh; int event_wqh; int fault_wqh; int fault_pending_wqh; } ;


 int init_waitqueue_head (int *) ;
 int seqcount_init (int *) ;

__attribute__((used)) static void init_once_userfaultfd_ctx(void *mem)
{
 struct userfaultfd_ctx *ctx = (struct userfaultfd_ctx *) mem;

 init_waitqueue_head(&ctx->fault_pending_wqh);
 init_waitqueue_head(&ctx->fault_wqh);
 init_waitqueue_head(&ctx->event_wqh);
 init_waitqueue_head(&ctx->fd_wqh);
 seqcount_init(&ctx->refile_seq);
}
