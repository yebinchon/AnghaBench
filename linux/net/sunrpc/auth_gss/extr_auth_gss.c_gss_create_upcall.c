
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sunrpc_net {scalar_t__ pipe_version; } ;
struct rpc_pipe {int lock; } ;
struct rpc_cred {TYPE_2__* cr_cred; } ;
struct net {int dummy; } ;
struct TYPE_3__ {int errno; } ;
struct gss_upcall_msg {int waitqueue; TYPE_1__ msg; int * ctx; struct rpc_pipe* pipe; } ;
struct gss_cred {struct rpc_cred gc_base; } ;
struct gss_auth {struct net* net; } ;
struct TYPE_4__ {int fsuid; } ;


 int DEFINE_WAIT (int ) ;
 int EACCES ;
 int EAGAIN ;
 int ERESTARTSYS ;
 int HZ ;
 scalar_t__ IS_ERR (struct gss_upcall_msg*) ;
 int PTR_ERR (struct gss_upcall_msg*) ;
 int TASK_KILLABLE ;
 int current ;
 scalar_t__ fatal_signal_pending (int ) ;
 int finish_wait (int *,int *) ;
 int from_kuid (int *,int ) ;
 int gss_cred_set_ctx (struct rpc_cred*,int *) ;
 int gss_release_msg (struct gss_upcall_msg*) ;
 struct gss_upcall_msg* gss_setup_upcall (struct gss_auth*,struct rpc_cred*) ;
 int gssd_running (struct net*) ;
 int init_user_ns ;
 struct sunrpc_net* net_generic (struct net*,int ) ;
 int pipe_version_waitqueue ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sunrpc_net_id ;
 int trace_rpcgss_upcall_result (int ,int) ;
 int wait ;
 int wait_event_interruptible_timeout (int ,int,int) ;
 int warn_gssd () ;

__attribute__((used)) static inline int
gss_create_upcall(struct gss_auth *gss_auth, struct gss_cred *gss_cred)
{
 struct net *net = gss_auth->net;
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);
 struct rpc_pipe *pipe;
 struct rpc_cred *cred = &gss_cred->gc_base;
 struct gss_upcall_msg *gss_msg;
 DEFINE_WAIT(wait);
 int err;

retry:
 err = 0;

 if (!gssd_running(net)) {
  warn_gssd();
  err = -EACCES;
  goto out;
 }
 gss_msg = gss_setup_upcall(gss_auth, cred);
 if (PTR_ERR(gss_msg) == -EAGAIN) {
  err = wait_event_interruptible_timeout(pipe_version_waitqueue,
    sn->pipe_version >= 0, 15 * HZ);
  if (sn->pipe_version < 0) {
   warn_gssd();
   err = -EACCES;
  }
  if (err < 0)
   goto out;
  goto retry;
 }
 if (IS_ERR(gss_msg)) {
  err = PTR_ERR(gss_msg);
  goto out;
 }
 pipe = gss_msg->pipe;
 for (;;) {
  prepare_to_wait(&gss_msg->waitqueue, &wait, TASK_KILLABLE);
  spin_lock(&pipe->lock);
  if (gss_msg->ctx != ((void*)0) || gss_msg->msg.errno < 0) {
   break;
  }
  spin_unlock(&pipe->lock);
  if (fatal_signal_pending(current)) {
   err = -ERESTARTSYS;
   goto out_intr;
  }
  schedule();
 }
 if (gss_msg->ctx)
  gss_cred_set_ctx(cred, gss_msg->ctx);
 else
  err = gss_msg->msg.errno;
 spin_unlock(&pipe->lock);
out_intr:
 finish_wait(&gss_msg->waitqueue, &wait);
 gss_release_msg(gss_msg);
out:
 trace_rpcgss_upcall_result(from_kuid(&init_user_ns,
          cred->cr_cred->fsuid), err);
 return err;
}
