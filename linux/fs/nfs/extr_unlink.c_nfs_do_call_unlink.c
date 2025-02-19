
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rpc_task_setup {int rpc_client; int flags; int workqueue; struct nfs_unlinkdata* callback_data; int * callback_ops; struct rpc_message* rpc_message; } ;
struct rpc_task {int dummy; } ;
struct rpc_message {int rpc_cred; TYPE_2__* rpc_resp; TYPE_1__* rpc_argp; } ;
struct TYPE_6__ {int dir_attr; } ;
struct TYPE_5__ {int fh; } ;
struct nfs_unlinkdata {TYPE_3__* dentry; TYPE_2__ res; TYPE_1__ args; int cred; } ;
struct inode {int i_sb; } ;
struct TYPE_8__ {int (* unlink_setup ) (struct rpc_message*,TYPE_3__*,struct inode*) ;} ;
struct TYPE_7__ {int d_parent; } ;


 int IS_ERR (struct rpc_task*) ;
 int NFS_CLIENT (struct inode*) ;
 int NFS_FH (struct inode*) ;
 TYPE_4__* NFS_PROTO (struct inode*) ;
 int RPC_TASK_ASYNC ;
 struct inode* d_inode (int ) ;
 int nfs_fattr_init (int ) ;
 int nfs_sb_active (int ) ;
 int nfs_unlink_ops ;
 int nfsiod_workqueue ;
 int rpc_put_task_async (struct rpc_task*) ;
 struct rpc_task* rpc_run_task (struct rpc_task_setup*) ;
 int stub1 (struct rpc_message*,TYPE_3__*,struct inode*) ;

__attribute__((used)) static void nfs_do_call_unlink(struct inode *inode, struct nfs_unlinkdata *data)
{
 struct rpc_message msg = {
  .rpc_argp = &data->args,
  .rpc_resp = &data->res,
  .rpc_cred = data->cred,
 };
 struct rpc_task_setup task_setup_data = {
  .rpc_message = &msg,
  .callback_ops = &nfs_unlink_ops,
  .callback_data = data,
  .workqueue = nfsiod_workqueue,
  .flags = RPC_TASK_ASYNC,
 };
 struct rpc_task *task;
 struct inode *dir = d_inode(data->dentry->d_parent);
 nfs_sb_active(dir->i_sb);
 data->args.fh = NFS_FH(dir);
 nfs_fattr_init(data->res.dir_attr);

 NFS_PROTO(dir)->unlink_setup(&msg, data->dentry, inode);

 task_setup_data.rpc_client = NFS_CLIENT(dir);
 task = rpc_run_task(&task_setup_data);
 if (!IS_ERR(task))
  rpc_put_task_async(task);
}
