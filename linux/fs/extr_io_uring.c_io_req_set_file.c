
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sqe_submit {scalar_t__ needs_fixed_file; TYPE_1__* sqe; int sequence; } ;
struct io_submit_state {int dummy; } ;
struct io_ring_ctx {unsigned int nr_user_files; int * user_files; } ;
struct io_kiocb {int file; int flags; int sequence; } ;
struct TYPE_2__ {int fd; int flags; } ;


 int EBADF ;
 unsigned int IOSQE_FIXED_FILE ;
 unsigned int IOSQE_IO_DRAIN ;
 void* READ_ONCE (int ) ;
 int REQ_F_FIXED_FILE ;
 int REQ_F_IO_DRAIN ;
 int io_file_get (struct io_submit_state*,int) ;
 int io_op_needs_file (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int io_req_set_file(struct io_ring_ctx *ctx, const struct sqe_submit *s,
      struct io_submit_state *state, struct io_kiocb *req)
{
 unsigned flags;
 int fd;

 flags = READ_ONCE(s->sqe->flags);
 fd = READ_ONCE(s->sqe->fd);

 if (flags & IOSQE_IO_DRAIN)
  req->flags |= REQ_F_IO_DRAIN;





 req->sequence = s->sequence;

 if (!io_op_needs_file(s->sqe))
  return 0;

 if (flags & IOSQE_FIXED_FILE) {
  if (unlikely(!ctx->user_files ||
      (unsigned) fd >= ctx->nr_user_files))
   return -EBADF;
  req->file = ctx->user_files[fd];
  req->flags |= REQ_F_FIXED_FILE;
 } else {
  if (s->needs_fixed_file)
   return -EBADF;
  req->file = io_file_get(state, fd);
  if (unlikely(!req->file))
   return -EBADF;
 }

 return 0;
}
