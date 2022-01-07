
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nlmclnt_operations {int (* nlmclnt_alloc_call ) (void*) ;} ;
struct TYPE_7__ {int block; } ;
struct nlm_rqst {TYPE_3__ a_args; void* a_callback_data; } ;
struct nlm_host {struct nlmclnt_operations* h_nlmclnt_ops; } ;
struct TYPE_5__ {int owner; } ;
struct TYPE_6__ {TYPE_1__ nfs_fl; } ;
struct file_lock {scalar_t__ fl_type; TYPE_4__* fl_ops; TYPE_2__ fl_u; } ;
struct TYPE_8__ {int (* fl_release_private ) (struct file_lock*) ;} ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ F_UNLCK ;
 scalar_t__ IS_GETLK (int) ;
 scalar_t__ IS_SETLK (int) ;
 scalar_t__ IS_SETLKW (int) ;
 int dprintk (char*,int) ;
 struct nlm_rqst* nlm_alloc_call (struct nlm_host*) ;
 int nlmclnt_lock (struct nlm_rqst*,struct file_lock*) ;
 int nlmclnt_locks_init_private (struct file_lock*,struct nlm_host*) ;
 int nlmclnt_release_call (struct nlm_rqst*) ;
 int nlmclnt_setlockargs (struct nlm_rqst*,struct file_lock*) ;
 int nlmclnt_test (struct nlm_rqst*,struct file_lock*) ;
 int nlmclnt_unlock (struct nlm_rqst*,struct file_lock*) ;
 int stub1 (void*) ;
 int stub2 (struct file_lock*) ;

int nlmclnt_proc(struct nlm_host *host, int cmd, struct file_lock *fl, void *data)
{
 struct nlm_rqst *call;
 int status;
 const struct nlmclnt_operations *nlmclnt_ops = host->h_nlmclnt_ops;

 call = nlm_alloc_call(host);
 if (call == ((void*)0))
  return -ENOMEM;

 if (nlmclnt_ops && nlmclnt_ops->nlmclnt_alloc_call)
  nlmclnt_ops->nlmclnt_alloc_call(data);

 nlmclnt_locks_init_private(fl, host);
 if (!fl->fl_u.nfs_fl.owner) {

  nlmclnt_release_call(call);
  return -ENOMEM;
 }

 nlmclnt_setlockargs(call, fl);
 call->a_callback_data = data;

 if (IS_SETLK(cmd) || IS_SETLKW(cmd)) {
  if (fl->fl_type != F_UNLCK) {
   call->a_args.block = IS_SETLKW(cmd) ? 1 : 0;
   status = nlmclnt_lock(call, fl);
  } else
   status = nlmclnt_unlock(call, fl);
 } else if (IS_GETLK(cmd))
  status = nlmclnt_test(call, fl);
 else
  status = -EINVAL;
 fl->fl_ops->fl_release_private(fl);
 fl->fl_ops = ((void*)0);

 dprintk("lockd: clnt proc returns %d\n", status);
 return status;
}
