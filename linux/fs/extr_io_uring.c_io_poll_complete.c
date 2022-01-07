
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_ring_ctx {int dummy; } ;
struct TYPE_2__ {int done; } ;
struct io_kiocb {int user_data; TYPE_1__ poll; } ;
typedef int __poll_t ;


 int io_commit_cqring (struct io_ring_ctx*) ;
 int io_cqring_fill_event (struct io_ring_ctx*,int ,int ) ;
 int mangle_poll (int ) ;

__attribute__((used)) static void io_poll_complete(struct io_ring_ctx *ctx, struct io_kiocb *req,
        __poll_t mask)
{
 req->poll.done = 1;
 io_cqring_fill_event(ctx, req->user_data, mangle_poll(mask));
 io_commit_cqring(ctx);
}
