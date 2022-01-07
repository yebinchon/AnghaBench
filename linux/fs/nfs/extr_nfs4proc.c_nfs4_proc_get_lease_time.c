
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task_setup {int flags; struct nfs4_get_lease_time_data* callback_data; int * callback_ops; struct rpc_message* rpc_message; int rpc_client; } ;
struct rpc_message {struct nfs4_get_lease_time_res* rpc_resp; struct nfs4_get_lease_time_args* rpc_argp; int * rpc_proc; } ;
struct nfs_fsinfo {int dummy; } ;
struct nfs_client {int cl_rpcclient; } ;
struct nfs4_get_lease_time_res {int lr_seq_res; struct nfs_fsinfo* lr_fsinfo; } ;
struct nfs4_get_lease_time_data {struct nfs_client* clp; struct nfs4_get_lease_time_res* res; struct nfs4_get_lease_time_args* args; } ;
struct nfs4_get_lease_time_args {int la_seq_args; } ;


 size_t NFSPROC4_CLNT_GET_LEASE_TIME ;
 int RPC_TASK_TIMEOUT ;
 int nfs4_call_sync_custom (struct rpc_task_setup*) ;
 int nfs4_get_lease_time_ops ;
 int nfs4_init_sequence (int *,int *,int ,int) ;
 int * nfs4_procedures ;

int nfs4_proc_get_lease_time(struct nfs_client *clp, struct nfs_fsinfo *fsinfo)
{
 struct nfs4_get_lease_time_args args;
 struct nfs4_get_lease_time_res res = {
  .lr_fsinfo = fsinfo,
 };
 struct nfs4_get_lease_time_data data = {
  .args = &args,
  .res = &res,
  .clp = clp,
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_GET_LEASE_TIME],
  .rpc_argp = &args,
  .rpc_resp = &res,
 };
 struct rpc_task_setup task_setup = {
  .rpc_client = clp->cl_rpcclient,
  .rpc_message = &msg,
  .callback_ops = &nfs4_get_lease_time_ops,
  .callback_data = &data,
  .flags = RPC_TASK_TIMEOUT,
 };

 nfs4_init_sequence(&args.la_seq_args, &res.lr_seq_res, 0, 1);
 return nfs4_call_sync_custom(&task_setup);
}
