
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct fuse_req {TYPE_1__ waitq; int flags; } ;


 int ENOENT ;
 int FR_ABORTED ;
 int FR_LOCKED ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int lock_request(struct fuse_req *req)
{
 int err = 0;
 if (req) {
  spin_lock(&req->waitq.lock);
  if (test_bit(FR_ABORTED, &req->flags))
   err = -ENOENT;
  else
   set_bit(FR_LOCKED, &req->flags);
  spin_unlock(&req->waitq.lock);
 }
 return err;
}
