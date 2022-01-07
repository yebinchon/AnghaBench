
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct TYPE_3__ {scalar_t__ uid; scalar_t__ gid; int pid; } ;
struct TYPE_4__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_2__ in; int flags; } ;
struct fuse_conn {int pid_ns; int user_ns; int blocked_waitq; scalar_t__ conn_error; int connected; int num_waiting; } ;
typedef scalar_t__ gid_t ;


 int ECONNREFUSED ;
 int EINTR ;
 int ENOMEM ;
 int ENOTCONN ;
 int EOVERFLOW ;
 struct fuse_req* ERR_PTR (int) ;
 int FR_BACKGROUND ;
 int FR_WAITING ;
 int GFP_KERNEL ;
 int __set_bit (int ,int *) ;
 int atomic_inc (int *) ;
 int current ;
 int current_fsgid () ;
 int current_fsuid () ;
 scalar_t__ from_kgid (int ,int ) ;
 scalar_t__ from_kuid (int ,int ) ;
 scalar_t__ fuse_block_alloc (struct fuse_conn*,int) ;
 int fuse_drop_waiting (struct fuse_conn*) ;
 int fuse_put_request (struct fuse_conn*,struct fuse_req*) ;
 struct fuse_req* fuse_request_alloc (int ) ;
 int pid_nr_ns (int ,int ) ;
 int smp_rmb () ;
 int task_pid (int ) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ wait_event_killable_exclusive (int ,int) ;
 int wake_up (int *) ;

__attribute__((used)) static struct fuse_req *fuse_get_req(struct fuse_conn *fc, bool for_background)
{
 struct fuse_req *req;
 int err;
 atomic_inc(&fc->num_waiting);

 if (fuse_block_alloc(fc, for_background)) {
  err = -EINTR;
  if (wait_event_killable_exclusive(fc->blocked_waitq,
    !fuse_block_alloc(fc, for_background)))
   goto out;
 }

 smp_rmb();

 err = -ENOTCONN;
 if (!fc->connected)
  goto out;

 err = -ECONNREFUSED;
 if (fc->conn_error)
  goto out;

 req = fuse_request_alloc(GFP_KERNEL);
 err = -ENOMEM;
 if (!req) {
  if (for_background)
   wake_up(&fc->blocked_waitq);
  goto out;
 }

 req->in.h.uid = from_kuid(fc->user_ns, current_fsuid());
 req->in.h.gid = from_kgid(fc->user_ns, current_fsgid());
 req->in.h.pid = pid_nr_ns(task_pid(current), fc->pid_ns);

 __set_bit(FR_WAITING, &req->flags);
 if (for_background)
  __set_bit(FR_BACKGROUND, &req->flags);

 if (unlikely(req->in.h.uid == ((uid_t)-1) ||
       req->in.h.gid == ((gid_t)-1))) {
  fuse_put_request(fc, req);
  return ERR_PTR(-EOVERFLOW);
 }
 return req;

 out:
 fuse_drop_waiting(fc);
 return ERR_PTR(err);
}
