
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int unique; } ;
struct TYPE_8__ {TYPE_3__ h; } ;
struct TYPE_5__ {int error; } ;
struct TYPE_6__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_4__ in; TYPE_2__ out; int flags; } ;
struct fuse_iqueue {int lock; int connected; } ;
struct fuse_conn {struct fuse_iqueue iq; } ;


 int BUG_ON (int ) ;
 int ENOTCONN ;
 int FR_BACKGROUND ;
 int __fuse_get_request (struct fuse_req*) ;
 int fuse_get_unique (struct fuse_iqueue*) ;
 int queue_request_and_unlock (struct fuse_iqueue*,struct fuse_req*) ;
 int request_wait_answer (struct fuse_conn*,struct fuse_req*) ;
 int smp_rmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void __fuse_request_send(struct fuse_conn *fc, struct fuse_req *req)
{
 struct fuse_iqueue *fiq = &fc->iq;

 BUG_ON(test_bit(FR_BACKGROUND, &req->flags));
 spin_lock(&fiq->lock);
 if (!fiq->connected) {
  spin_unlock(&fiq->lock);
  req->out.h.error = -ENOTCONN;
 } else {
  req->in.h.unique = fuse_get_unique(fiq);


  __fuse_get_request(req);
  queue_request_and_unlock(fiq, req);

  request_wait_answer(fc, req);

  smp_rmb();
 }
}
