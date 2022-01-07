
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_pipe_msg {int list; int errno; } ;
struct rpc_pipe {scalar_t__ nwriters; scalar_t__ nreaders; TYPE_1__* ops; int lock; scalar_t__ pipelen; int pipe; } ;
struct inode {int dummy; } ;
struct file {int f_mode; struct rpc_pipe_msg* private_data; } ;
struct TYPE_4__ {int waitq; struct rpc_pipe* pipe; } ;
struct TYPE_3__ {int (* release_pipe ) (struct inode*) ;int (* destroy_msg ) (struct rpc_pipe_msg*) ;} ;


 int EAGAIN ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int LIST_HEAD (int ) ;
 TYPE_2__* RPC_I (struct inode*) ;
 int free_list ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int list_del_init (int *) ;
 int list_splice_init (int *,int *) ;
 int rpc_purge_list (int *,int *,int (*) (struct rpc_pipe_msg*),int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct rpc_pipe_msg*) ;
 int stub2 (struct inode*) ;

__attribute__((used)) static int
rpc_pipe_release(struct inode *inode, struct file *filp)
{
 struct rpc_pipe *pipe;
 struct rpc_pipe_msg *msg;
 int last_close;

 inode_lock(inode);
 pipe = RPC_I(inode)->pipe;
 if (pipe == ((void*)0))
  goto out;
 msg = filp->private_data;
 if (msg != ((void*)0)) {
  spin_lock(&pipe->lock);
  msg->errno = -EAGAIN;
  list_del_init(&msg->list);
  spin_unlock(&pipe->lock);
  pipe->ops->destroy_msg(msg);
 }
 if (filp->f_mode & FMODE_WRITE)
  pipe->nwriters --;
 if (filp->f_mode & FMODE_READ) {
  pipe->nreaders --;
  if (pipe->nreaders == 0) {
   LIST_HEAD(free_list);
   spin_lock(&pipe->lock);
   list_splice_init(&pipe->pipe, &free_list);
   pipe->pipelen = 0;
   spin_unlock(&pipe->lock);
   rpc_purge_list(&RPC_I(inode)->waitq, &free_list,
     pipe->ops->destroy_msg, -EAGAIN);
  }
 }
 last_close = pipe->nwriters == 0 && pipe->nreaders == 0;
 if (last_close && pipe->ops->release_pipe)
  pipe->ops->release_pipe(inode);
out:
 inode_unlock(inode);
 return 0;
}
