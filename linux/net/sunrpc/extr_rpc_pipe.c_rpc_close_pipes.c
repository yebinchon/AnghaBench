
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_pipe {scalar_t__ nreaders; scalar_t__ nwriters; int queue_timeout; TYPE_1__* ops; int lock; int * dentry; scalar_t__ pipelen; int pipe; int in_upcall; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {struct rpc_pipe* pipe; int waitq; } ;
struct TYPE_3__ {int (* release_pipe ) (struct inode*) ;int destroy_msg; } ;


 int EPIPE ;
 int LIST_HEAD (int ) ;
 TYPE_2__* RPC_I (struct inode*) ;
 int cancel_delayed_work_sync (int *) ;
 int free_list ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int list_splice_init (int *,int *) ;
 int rpc_inode_setowner (struct inode*,int *) ;
 int rpc_purge_list (int *,int *,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct inode*) ;

__attribute__((used)) static void
rpc_close_pipes(struct inode *inode)
{
 struct rpc_pipe *pipe = RPC_I(inode)->pipe;
 int need_release;
 LIST_HEAD(free_list);

 inode_lock(inode);
 spin_lock(&pipe->lock);
 need_release = pipe->nreaders != 0 || pipe->nwriters != 0;
 pipe->nreaders = 0;
 list_splice_init(&pipe->in_upcall, &free_list);
 list_splice_init(&pipe->pipe, &free_list);
 pipe->pipelen = 0;
 pipe->dentry = ((void*)0);
 spin_unlock(&pipe->lock);
 rpc_purge_list(&RPC_I(inode)->waitq, &free_list, pipe->ops->destroy_msg, -EPIPE);
 pipe->nwriters = 0;
 if (need_release && pipe->ops->release_pipe)
  pipe->ops->release_pipe(inode);
 cancel_delayed_work_sync(&pipe->queue_timeout);
 rpc_inode_setowner(inode, ((void*)0));
 RPC_I(inode)->pipe = ((void*)0);
 inode_unlock(inode);
}
