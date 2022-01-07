
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_ring_ctx {int dummy; } ;
struct io_kiocb {int flags; } ;


 int REQ_F_IO_DRAIN ;
 int REQ_F_IO_DRAINED ;
 int __io_sequence_defer (struct io_ring_ctx*,struct io_kiocb*) ;

__attribute__((used)) static inline bool io_sequence_defer(struct io_ring_ctx *ctx,
         struct io_kiocb *req)
{
 if ((req->flags & (REQ_F_IO_DRAIN|REQ_F_IO_DRAINED)) != REQ_F_IO_DRAIN)
  return 0;

 return __io_sequence_defer(ctx, req);
}
