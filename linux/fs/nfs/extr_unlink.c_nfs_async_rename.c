
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_task_setup {struct nfs_renamedata* callback_data; int flags; int rpc_client; int workqueue; int * callback_ops; struct rpc_message* rpc_message; } ;
struct rpc_task {int dummy; } ;
struct rpc_message {int rpc_cred; TYPE_2__* rpc_resp; TYPE_1__* rpc_argp; } ;
struct TYPE_5__ {int * new_fattr; int * old_fattr; } ;
struct TYPE_4__ {int * new_name; void* new_dir; int * old_name; void* old_dir; } ;
struct nfs_renamedata {void (* complete ) (struct rpc_task*,struct nfs_renamedata*) ;struct inode* old_dir; int new_fattr; TYPE_2__ res; int old_fattr; TYPE_1__ args; void* new_dentry; void* old_dentry; struct inode* new_dir; int cred; } ;
struct inode {int i_sb; } ;
struct dentry {int d_name; } ;
struct TYPE_6__ {int (* rename_setup ) (struct rpc_message*,struct dentry*,struct dentry*) ;} ;


 int ENOMEM ;
 struct rpc_task* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int NFS_CLIENT (struct inode*) ;
 void* NFS_FH (struct inode*) ;
 TYPE_3__* NFS_PROTO (struct inode*) ;
 int RPC_TASK_ASYNC ;
 void* dget (struct dentry*) ;
 int get_current_cred () ;
 int ihold (struct inode*) ;
 struct nfs_renamedata* kzalloc (int,int ) ;
 int nfs_fattr_init (int *) ;
 int nfs_rename_ops ;
 int nfs_sb_active (int ) ;
 int nfsiod_workqueue ;
 struct rpc_task* rpc_run_task (struct rpc_task_setup*) ;
 int stub1 (struct rpc_message*,struct dentry*,struct dentry*) ;

struct rpc_task *
nfs_async_rename(struct inode *old_dir, struct inode *new_dir,
   struct dentry *old_dentry, struct dentry *new_dentry,
   void (*complete)(struct rpc_task *, struct nfs_renamedata *))
{
 struct nfs_renamedata *data;
 struct rpc_message msg = { };
 struct rpc_task_setup task_setup_data = {
  .rpc_message = &msg,
  .callback_ops = &nfs_rename_ops,
  .workqueue = nfsiod_workqueue,
  .rpc_client = NFS_CLIENT(old_dir),
  .flags = RPC_TASK_ASYNC,
 };

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (data == ((void*)0))
  return ERR_PTR(-ENOMEM);
 task_setup_data.callback_data = data;

 data->cred = get_current_cred();

 msg.rpc_argp = &data->args;
 msg.rpc_resp = &data->res;
 msg.rpc_cred = data->cred;


 data->old_dir = old_dir;
 ihold(old_dir);
 data->new_dir = new_dir;
 ihold(new_dir);
 data->old_dentry = dget(old_dentry);
 data->new_dentry = dget(new_dentry);
 nfs_fattr_init(&data->old_fattr);
 nfs_fattr_init(&data->new_fattr);
 data->complete = complete;


 data->args.old_dir = NFS_FH(old_dir);
 data->args.old_name = &old_dentry->d_name;
 data->args.new_dir = NFS_FH(new_dir);
 data->args.new_name = &new_dentry->d_name;


 data->res.old_fattr = &data->old_fattr;
 data->res.new_fattr = &data->new_fattr;

 nfs_sb_active(old_dir->i_sb);

 NFS_PROTO(data->old_dir)->rename_setup(&msg, old_dentry, new_dentry);

 return rpc_run_task(&task_setup_data);
}
