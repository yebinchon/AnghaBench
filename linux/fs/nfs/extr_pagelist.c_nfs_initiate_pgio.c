
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rpc_task_setup {int flags; int workqueue; struct nfs_pgio_header* callback_data; struct rpc_call_ops const* callback_ops; struct rpc_message* rpc_message; int * task; struct rpc_clnt* rpc_client; } ;
struct rpc_task {int tk_status; } ;
struct rpc_message {struct cred const* rpc_cred; int * rpc_resp; TYPE_3__* rpc_argp; } ;
struct rpc_clnt {int dummy; } ;
struct rpc_call_ops {int dummy; } ;
struct nfs_rpc_ops {int dummy; } ;
struct TYPE_7__ {scalar_t__ offset; int count; } ;
struct nfs_pgio_header {TYPE_3__ args; TYPE_4__* inode; TYPE_1__* rw_ops; int task; int res; } ;
struct cred {int dummy; } ;
struct TYPE_8__ {TYPE_2__* i_sb; } ;
struct TYPE_6__ {int s_id; } ;
struct TYPE_5__ {int (* rw_initiate ) (struct nfs_pgio_header*,struct rpc_message*,struct nfs_rpc_ops const*,struct rpc_task_setup*,int) ;} ;


 int FLUSH_SYNC ;
 scalar_t__ IS_ERR (struct rpc_task*) ;
 scalar_t__ NFS_FILEID (TYPE_4__*) ;
 int PTR_ERR (struct rpc_task*) ;
 int RPC_TASK_ASYNC ;
 int dprintk (char*,int ,unsigned long long,int ,unsigned long long) ;
 int nfsiod_workqueue ;
 int rpc_put_task (struct rpc_task*) ;
 struct rpc_task* rpc_run_task (struct rpc_task_setup*) ;
 int rpc_wait_for_completion_task (struct rpc_task*) ;
 int stub1 (struct nfs_pgio_header*,struct rpc_message*,struct nfs_rpc_ops const*,struct rpc_task_setup*,int) ;

int nfs_initiate_pgio(struct rpc_clnt *clnt, struct nfs_pgio_header *hdr,
        const struct cred *cred, const struct nfs_rpc_ops *rpc_ops,
        const struct rpc_call_ops *call_ops, int how, int flags)
{
 struct rpc_task *task;
 struct rpc_message msg = {
  .rpc_argp = &hdr->args,
  .rpc_resp = &hdr->res,
  .rpc_cred = cred,
 };
 struct rpc_task_setup task_setup_data = {
  .rpc_client = clnt,
  .task = &hdr->task,
  .rpc_message = &msg,
  .callback_ops = call_ops,
  .callback_data = hdr,
  .workqueue = nfsiod_workqueue,
  .flags = RPC_TASK_ASYNC | flags,
 };
 int ret = 0;

 hdr->rw_ops->rw_initiate(hdr, &msg, rpc_ops, &task_setup_data, how);

 dprintk("NFS: initiated pgio call "
  "(req %s/%llu, %u bytes @ offset %llu)\n",
  hdr->inode->i_sb->s_id,
  (unsigned long long)NFS_FILEID(hdr->inode),
  hdr->args.count,
  (unsigned long long)hdr->args.offset);

 task = rpc_run_task(&task_setup_data);
 if (IS_ERR(task)) {
  ret = PTR_ERR(task);
  goto out;
 }
 if (how & FLUSH_SYNC) {
  ret = rpc_wait_for_completion_task(task);
  if (ret == 0)
   ret = task->tk_status;
 }
 rpc_put_task(task);
out:
 return ret;
}
