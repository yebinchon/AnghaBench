
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_inode {TYPE_1__* pipe; int waitq; } ;
struct poll_table_struct {int dummy; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
typedef int __poll_t ;
struct TYPE_2__ {int pipe; } ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 struct rpc_inode* RPC_I (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static __poll_t
rpc_pipe_poll(struct file *filp, struct poll_table_struct *wait)
{
 struct inode *inode = file_inode(filp);
 struct rpc_inode *rpci = RPC_I(inode);
 __poll_t mask = EPOLLOUT | EPOLLWRNORM;

 poll_wait(filp, &rpci->waitq, wait);

 inode_lock(inode);
 if (rpci->pipe == ((void*)0))
  mask |= EPOLLERR | EPOLLHUP;
 else if (filp->private_data || !list_empty(&rpci->pipe->pipe))
  mask |= EPOLLIN | EPOLLRDNORM;
 inode_unlock(inode);
 return mask;
}
