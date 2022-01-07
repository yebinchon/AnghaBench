
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_pipe {int * dentry; int lock; int * ops; int queue_timeout; scalar_t__ pipelen; int pipe; int in_downcall; int in_upcall; scalar_t__ nwriters; scalar_t__ nreaders; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int rpc_timeout_upcall_queue ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void
init_pipe(struct rpc_pipe *pipe)
{
 pipe->nreaders = 0;
 pipe->nwriters = 0;
 INIT_LIST_HEAD(&pipe->in_upcall);
 INIT_LIST_HEAD(&pipe->in_downcall);
 INIT_LIST_HEAD(&pipe->pipe);
 pipe->pipelen = 0;
 INIT_DELAYED_WORK(&pipe->queue_timeout,
       rpc_timeout_upcall_queue);
 pipe->ops = ((void*)0);
 spin_lock_init(&pipe->lock);
 pipe->dentry = ((void*)0);
}
