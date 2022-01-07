
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct nfs_lock_context {int io_count; TYPE_1__* open_context; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int uoc_rpcwaitq; } ;
struct TYPE_3__ {int dentry; } ;


 TYPE_2__* NFS_SERVER (struct inode*) ;
 scalar_t__ atomic_read (int *) ;
 struct inode* d_inode (int ) ;
 int rpc_sleep_on (int *,struct rpc_task*,int *) ;
 int rpc_wake_up_queued_task (int *,struct rpc_task*) ;

bool
nfs_async_iocounter_wait(struct rpc_task *task, struct nfs_lock_context *l_ctx)
{
 struct inode *inode = d_inode(l_ctx->open_context->dentry);
 bool ret = 0;

 if (atomic_read(&l_ctx->io_count) > 0) {
  rpc_sleep_on(&NFS_SERVER(inode)->uoc_rpcwaitq, task, ((void*)0));
  ret = 1;
 }

 if (atomic_read(&l_ctx->io_count) == 0) {
  rpc_wake_up_queued_task(&NFS_SERVER(inode)->uoc_rpcwaitq, task);
  ret = 0;
 }

 return ret;
}
