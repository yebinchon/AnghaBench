
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_req {int flags; int count; } ;
struct fuse_conn {int bg_lock; int blocked_waitq; int blocked; } ;


 int FR_BACKGROUND ;
 int FR_WAITING ;
 int __clear_bit (int ,int *) ;
 int fuse_drop_waiting (struct fuse_conn*) ;
 int fuse_request_free (struct fuse_req*) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void fuse_put_request(struct fuse_conn *fc, struct fuse_req *req)
{
 if (refcount_dec_and_test(&req->count)) {
  if (test_bit(FR_BACKGROUND, &req->flags)) {




   spin_lock(&fc->bg_lock);
   if (!fc->blocked)
    wake_up(&fc->blocked_waitq);
   spin_unlock(&fc->bg_lock);
  }

  if (test_bit(FR_WAITING, &req->flags)) {
   __clear_bit(FR_WAITING, &req->flags);
   fuse_drop_waiting(fc);
  }

  fuse_request_free(req);
 }
}
