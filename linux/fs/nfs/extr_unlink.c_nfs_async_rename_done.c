
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int tk_status; } ;
struct nfs_renamedata {int (* complete ) (struct rpc_task*,struct nfs_renamedata*) ;int new_dentry; struct dentry* old_dentry; struct inode* new_dir; struct inode* old_dir; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* rename_done ) (struct rpc_task*,struct inode*,struct inode*) ;} ;


 TYPE_1__* NFS_PROTO (struct inode*) ;
 int rpc_restart_call_prepare (struct rpc_task*) ;
 int stub1 (struct rpc_task*,struct inode*,struct inode*) ;
 int stub2 (struct rpc_task*,struct nfs_renamedata*) ;
 int trace_nfs_sillyrename_rename (struct inode*,struct dentry*,struct inode*,int ,int ) ;

__attribute__((used)) static void nfs_async_rename_done(struct rpc_task *task, void *calldata)
{
 struct nfs_renamedata *data = calldata;
 struct inode *old_dir = data->old_dir;
 struct inode *new_dir = data->new_dir;
 struct dentry *old_dentry = data->old_dentry;

 trace_nfs_sillyrename_rename(old_dir, old_dentry,
   new_dir, data->new_dentry, task->tk_status);
 if (!NFS_PROTO(old_dir)->rename_done(task, old_dir, new_dir)) {
  rpc_restart_call_prepare(task);
  return;
 }

 if (data->complete)
  data->complete(task, data);
}
