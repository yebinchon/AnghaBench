
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {scalar_t__ tk_status; } ;
struct nfs_renamedata {struct dentry* old_dentry; } ;
struct dentry {int dummy; } ;


 int nfs_cancel_async_unlink (struct dentry*) ;

__attribute__((used)) static void
nfs_complete_sillyrename(struct rpc_task *task, struct nfs_renamedata *data)
{
 struct dentry *dentry = data->old_dentry;

 if (task->tk_status != 0) {
  nfs_cancel_async_unlink(dentry);
  return;
 }
}
