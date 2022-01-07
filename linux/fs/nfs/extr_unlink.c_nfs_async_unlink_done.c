
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task {int tk_status; } ;
struct nfs_unlinkdata {TYPE_1__* dentry; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int (* unlink_done ) (struct rpc_task*,struct inode*) ;} ;
struct TYPE_3__ {int d_parent; } ;


 TYPE_2__* NFS_PROTO (struct inode*) ;
 struct inode* d_inode (int ) ;
 int rpc_restart_call_prepare (struct rpc_task*) ;
 int stub1 (struct rpc_task*,struct inode*) ;
 int trace_nfs_sillyrename_unlink (struct nfs_unlinkdata*,int ) ;

__attribute__((used)) static void nfs_async_unlink_done(struct rpc_task *task, void *calldata)
{
 struct nfs_unlinkdata *data = calldata;
 struct inode *dir = d_inode(data->dentry->d_parent);

 trace_nfs_sillyrename_unlink(data, task->tk_status);
 if (!NFS_PROTO(dir)->unlink_done(task, dir))
  rpc_restart_call_prepare(task);
}
