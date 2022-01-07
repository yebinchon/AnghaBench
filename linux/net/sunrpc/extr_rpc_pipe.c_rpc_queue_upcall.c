
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_pipe_msg {scalar_t__ len; int list; } ;
struct rpc_pipe {int flags; int lock; int dentry; int pipelen; int pipe; int queue_timeout; scalar_t__ nreaders; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int waitq; } ;


 int EPIPE ;
 TYPE_1__* RPC_I (int ) ;
 int RPC_PIPE_WAIT_FOR_OPEN ;
 int RPC_UPCALL_TIMEOUT ;
 int d_inode (struct dentry*) ;
 struct dentry* dget (int ) ;
 int dput (struct dentry*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int rpciod_workqueue ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

int
rpc_queue_upcall(struct rpc_pipe *pipe, struct rpc_pipe_msg *msg)
{
 int res = -EPIPE;
 struct dentry *dentry;

 spin_lock(&pipe->lock);
 if (pipe->nreaders) {
  list_add_tail(&msg->list, &pipe->pipe);
  pipe->pipelen += msg->len;
  res = 0;
 } else if (pipe->flags & RPC_PIPE_WAIT_FOR_OPEN) {
  if (list_empty(&pipe->pipe))
   queue_delayed_work(rpciod_workqueue,
     &pipe->queue_timeout,
     RPC_UPCALL_TIMEOUT);
  list_add_tail(&msg->list, &pipe->pipe);
  pipe->pipelen += msg->len;
  res = 0;
 }
 dentry = dget(pipe->dentry);
 spin_unlock(&pipe->lock);
 if (dentry) {
  wake_up(&RPC_I(d_inode(dentry))->waitq);
  dput(dentry);
 }
 return res;
}
