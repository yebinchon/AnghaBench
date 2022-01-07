
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct cred const* rpc_cred; struct nfs_client* rpc_argp; int * rpc_proc; } ;
struct nfs_client {int cl_rpcclient; } ;
struct cred {int dummy; } ;


 size_t NFSPROC4_CLNT_RENEW ;
 int RPC_TASK_TIMEOUT ;
 int do_renew_lease (struct nfs_client*,unsigned long) ;
 unsigned long jiffies ;
 int * nfs4_procedures ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int nfs4_proc_renew(struct nfs_client *clp, const struct cred *cred)
{
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_RENEW],
  .rpc_argp = clp,
  .rpc_cred = cred,
 };
 unsigned long now = jiffies;
 int status;

 status = rpc_call_sync(clp->cl_rpcclient, &msg, RPC_TASK_TIMEOUT);
 if (status < 0)
  return status;
 do_renew_lease(clp, now);
 return 0;
}
