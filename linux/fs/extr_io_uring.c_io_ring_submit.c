
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sqe_submit {int has_user; int needs_lock; int needs_fixed_file; int sequence; TYPE_1__* sqe; } ;
struct io_submit_state {int dummy; } ;
struct io_ring_ctx {int dummy; } ;
struct io_kiocb {int flags; int submit; int sequence; int refs; } ;
struct TYPE_2__ {int flags; } ;


 int IOSQE_IO_DRAIN ;
 int IOSQE_IO_LINK ;
 unsigned int IO_PLUG_THRESHOLD ;
 int REQ_F_IO_DRAIN ;
 int REQ_F_SHADOW_DRAIN ;
 int io_commit_sqring (struct io_ring_ctx*) ;
 struct io_kiocb* io_get_req (struct io_ring_ctx*,int *) ;
 int io_get_sqring (struct io_ring_ctx*,struct sqe_submit*) ;
 int io_queue_link_head (struct io_ring_ctx*,struct io_kiocb*,int *,struct io_kiocb*) ;
 int io_submit_sqe (struct io_ring_ctx*,struct sqe_submit*,struct io_submit_state*,struct io_kiocb**) ;
 int io_submit_state_end (struct io_submit_state*) ;
 int io_submit_state_start (struct io_submit_state*,struct io_ring_ctx*,unsigned int) ;
 int refcount_dec (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int io_ring_submit(struct io_ring_ctx *ctx, unsigned int to_submit)
{
 struct io_submit_state state, *statep = ((void*)0);
 struct io_kiocb *link = ((void*)0);
 struct io_kiocb *shadow_req = ((void*)0);
 bool prev_was_link = 0;
 int i, submit = 0;

 if (to_submit > IO_PLUG_THRESHOLD) {
  io_submit_state_start(&state, ctx, to_submit);
  statep = &state;
 }

 for (i = 0; i < to_submit; i++) {
  struct sqe_submit s;

  if (!io_get_sqring(ctx, &s))
   break;





  if (!prev_was_link && link) {
   io_queue_link_head(ctx, link, &link->submit, shadow_req);
   link = ((void*)0);
   shadow_req = ((void*)0);
  }
  prev_was_link = (s.sqe->flags & IOSQE_IO_LINK) != 0;

  if (link && (s.sqe->flags & IOSQE_IO_DRAIN)) {
   if (!shadow_req) {
    shadow_req = io_get_req(ctx, ((void*)0));
    if (unlikely(!shadow_req))
     goto out;
    shadow_req->flags |= (REQ_F_IO_DRAIN | REQ_F_SHADOW_DRAIN);
    refcount_dec(&shadow_req->refs);
   }
   shadow_req->sequence = s.sequence;
  }

out:
  s.has_user = 1;
  s.needs_lock = 0;
  s.needs_fixed_file = 0;
  submit++;
  io_submit_sqe(ctx, &s, statep, &link);
 }

 if (link)
  io_queue_link_head(ctx, link, &link->submit, shadow_req);
 if (statep)
  io_submit_state_end(statep);

 io_commit_sqring(ctx);

 return submit;
}
