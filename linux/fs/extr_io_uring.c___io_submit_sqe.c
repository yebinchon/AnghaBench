
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct sqe_submit {scalar_t__ index; scalar_t__ needs_lock; TYPE_1__* sqe; } ;
struct io_ring_ctx {scalar_t__ sq_entries; int flags; int uring_lock; } ;
struct io_kiocb {int result; void* user_data; } ;
struct TYPE_8__ {int buf_index; int opcode; int user_data; } ;


 int EAGAIN ;
 int EINVAL ;
 int IORING_SETUP_IOPOLL ;
 void* READ_ONCE (int ) ;
 int io_fsync (struct io_kiocb*,TYPE_1__*,int) ;
 int io_iopoll_req_issued (struct io_kiocb*) ;
 int io_nop (struct io_kiocb*,void*) ;
 int io_poll_add (struct io_kiocb*,TYPE_1__*) ;
 int io_poll_remove (struct io_kiocb*,TYPE_1__*) ;
 int io_read (struct io_kiocb*,struct sqe_submit const*,int) ;
 int io_recvmsg (struct io_kiocb*,TYPE_1__*,int) ;
 int io_sendmsg (struct io_kiocb*,TYPE_1__*,int) ;
 int io_sync_file_range (struct io_kiocb*,TYPE_1__*,int) ;
 int io_timeout (struct io_kiocb*,TYPE_1__*) ;
 int io_write (struct io_kiocb*,struct sqe_submit const*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __io_submit_sqe(struct io_ring_ctx *ctx, struct io_kiocb *req,
      const struct sqe_submit *s, bool force_nonblock)
{
 int ret, opcode;

 req->user_data = READ_ONCE(s->sqe->user_data);

 if (unlikely(s->index >= ctx->sq_entries))
  return -EINVAL;

 opcode = READ_ONCE(s->sqe->opcode);
 switch (opcode) {
 case 138:
  ret = io_nop(req, req->user_data);
  break;
 case 135:
  if (unlikely(s->sqe->buf_index))
   return -EINVAL;
  ret = io_read(req, s, force_nonblock);
  break;
 case 129:
  if (unlikely(s->sqe->buf_index))
   return -EINVAL;
  ret = io_write(req, s, force_nonblock);
  break;
 case 134:
  ret = io_read(req, s, force_nonblock);
  break;
 case 128:
  ret = io_write(req, s, force_nonblock);
  break;
 case 139:
  ret = io_fsync(req, s->sqe, force_nonblock);
  break;
 case 137:
  ret = io_poll_add(req, s->sqe);
  break;
 case 136:
  ret = io_poll_remove(req, s->sqe);
  break;
 case 131:
  ret = io_sync_file_range(req, s->sqe, force_nonblock);
  break;
 case 132:
  ret = io_sendmsg(req, s->sqe, force_nonblock);
  break;
 case 133:
  ret = io_recvmsg(req, s->sqe, force_nonblock);
  break;
 case 130:
  ret = io_timeout(req, s->sqe);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 if (ret)
  return ret;

 if (ctx->flags & IORING_SETUP_IOPOLL) {
  if (req->result == -EAGAIN)
   return -EAGAIN;


  if (s->needs_lock)
   mutex_lock(&ctx->uring_lock);
  io_iopoll_req_issued(req);
  if (s->needs_lock)
   mutex_unlock(&ctx->uring_lock);
 }

 return 0;
}
