
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int unique; } ;
struct TYPE_4__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_2__ in; int flags; } ;
struct fuse_iqueue {int lock; scalar_t__ connected; } ;
struct fuse_conn {struct fuse_iqueue iq; } ;
struct fuse_args {int dummy; } ;


 int ENODEV ;
 int FR_ISREPLY ;
 scalar_t__ IS_ERR (struct fuse_req*) ;
 int PTR_ERR (struct fuse_req*) ;
 int __clear_bit (int ,int *) ;
 int fuse_args_to_req (struct fuse_req*,struct fuse_args*) ;
 struct fuse_req* fuse_get_req (struct fuse_conn*,int) ;
 int fuse_put_request (struct fuse_conn*,struct fuse_req*) ;
 int queue_request_and_unlock (struct fuse_iqueue*,struct fuse_req*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int fuse_simple_notify_reply(struct fuse_conn *fc,
        struct fuse_args *args, u64 unique)
{
 struct fuse_req *req;
 struct fuse_iqueue *fiq = &fc->iq;
 int err = 0;

 req = fuse_get_req(fc, 0);
 if (IS_ERR(req))
  return PTR_ERR(req);

 __clear_bit(FR_ISREPLY, &req->flags);
 req->in.h.unique = unique;

 fuse_args_to_req(req, args);

 spin_lock(&fiq->lock);
 if (fiq->connected) {
  queue_request_and_unlock(fiq, req);
 } else {
  err = -ENODEV;
  spin_unlock(&fiq->lock);
  fuse_put_request(fc, req);
 }

 return err;
}
