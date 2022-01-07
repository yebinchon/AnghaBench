
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; } ;
struct TYPE_4__ {TYPE_1__ h; } ;
struct fuse_req {int flags; int waitq; TYPE_2__ out; int list; } ;
struct fuse_iqueue {int lock; } ;
struct fuse_conn {int no_interrupt; struct fuse_iqueue iq; } ;


 int EINTR ;
 int FR_FINISHED ;
 int FR_FORCE ;
 int FR_INTERRUPTED ;
 int FR_PENDING ;
 int FR_SENT ;
 int __fuse_put_request (struct fuse_req*) ;
 int list_del (int *) ;
 int queue_interrupt (struct fuse_iqueue*,struct fuse_req*) ;
 int set_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event (int ,scalar_t__) ;
 int wait_event_interruptible (int ,scalar_t__) ;
 int wait_event_killable (int ,scalar_t__) ;

__attribute__((used)) static void request_wait_answer(struct fuse_conn *fc, struct fuse_req *req)
{
 struct fuse_iqueue *fiq = &fc->iq;
 int err;

 if (!fc->no_interrupt) {

  err = wait_event_interruptible(req->waitq,
     test_bit(FR_FINISHED, &req->flags));
  if (!err)
   return;

  set_bit(FR_INTERRUPTED, &req->flags);

  smp_mb__after_atomic();
  if (test_bit(FR_SENT, &req->flags))
   queue_interrupt(fiq, req);
 }

 if (!test_bit(FR_FORCE, &req->flags)) {

  err = wait_event_killable(req->waitq,
     test_bit(FR_FINISHED, &req->flags));
  if (!err)
   return;

  spin_lock(&fiq->lock);

  if (test_bit(FR_PENDING, &req->flags)) {
   list_del(&req->list);
   spin_unlock(&fiq->lock);
   __fuse_put_request(req);
   req->out.h.error = -EINTR;
   return;
  }
  spin_unlock(&fiq->lock);
 }





 wait_event(req->waitq, test_bit(FR_FINISHED, &req->flags));
}
