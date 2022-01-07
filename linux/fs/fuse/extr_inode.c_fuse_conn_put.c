
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fuse_iqueue {TYPE_1__* ops; } ;
struct fuse_conn {int (* release ) (struct fuse_conn*) ;int user_ns; int pid_ns; struct fuse_iqueue iq; int count; } ;
struct TYPE_2__ {int (* release ) (struct fuse_iqueue*) ;} ;


 int put_pid_ns (int ) ;
 int put_user_ns (int ) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int stub1 (struct fuse_iqueue*) ;
 int stub2 (struct fuse_conn*) ;

void fuse_conn_put(struct fuse_conn *fc)
{
 if (refcount_dec_and_test(&fc->count)) {
  struct fuse_iqueue *fiq = &fc->iq;

  if (fiq->ops->release)
   fiq->ops->release(fiq);
  put_pid_ns(fc->pid_ns);
  put_user_ns(fc->user_ns);
  fc->release(fc);
 }
}
