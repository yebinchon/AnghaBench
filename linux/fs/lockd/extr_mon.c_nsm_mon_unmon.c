
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct rpc_message {int * rpc_proc; struct nsm_res* rpc_resp; struct nsm_args* rpc_argp; } ;
struct rpc_clnt {int * cl_procinfo; } ;
struct nsm_res {int dummy; } ;
struct nsm_handle {int sm_mon_name; int sm_priv; } ;
struct nsm_args {int vers; int nodename; int mon_name; int proc; int prog; int * priv; } ;
struct nlm_host {TYPE_2__* net; int nodename; } ;
struct TYPE_3__ {int inum; } ;
struct TYPE_4__ {TYPE_1__ ns; } ;


 int ECONNREFUSED ;
 scalar_t__ IS_ERR (struct rpc_clnt*) ;
 int NLMPROC_NSM_NOTIFY ;
 int NLM_PROGRAM ;
 int PTR_ERR (struct rpc_clnt*) ;
 int RPC_TASK_SOFTCONN ;
 int dprintk (char*,int,...) ;
 int memset (struct nsm_res*,int ,int) ;
 struct rpc_clnt* nsm_create (TYPE_2__*,int ) ;
 int rpc_call_sync (struct rpc_clnt*,struct rpc_message*,int ) ;
 int rpc_force_rebind (struct rpc_clnt*) ;
 int rpc_shutdown_client (struct rpc_clnt*) ;

__attribute__((used)) static int nsm_mon_unmon(struct nsm_handle *nsm, u32 proc, struct nsm_res *res,
    const struct nlm_host *host)
{
 int status;
 struct rpc_clnt *clnt;
 struct nsm_args args = {
  .priv = &nsm->sm_priv,
  .prog = NLM_PROGRAM,
  .vers = 3,
  .proc = NLMPROC_NSM_NOTIFY,
  .mon_name = nsm->sm_mon_name,
  .nodename = host->nodename,
 };
 struct rpc_message msg = {
  .rpc_argp = &args,
  .rpc_resp = res,
 };

 memset(res, 0, sizeof(*res));

 clnt = nsm_create(host->net, host->nodename);
 if (IS_ERR(clnt)) {
  dprintk("lockd: failed to create NSM upcall transport, "
   "status=%ld, net=%x\n", PTR_ERR(clnt),
   host->net->ns.inum);
  return PTR_ERR(clnt);
 }

 msg.rpc_proc = &clnt->cl_procinfo[proc];
 status = rpc_call_sync(clnt, &msg, RPC_TASK_SOFTCONN);
 if (status == -ECONNREFUSED) {
  dprintk("lockd:	NSM upcall RPC failed, status=%d, forcing rebind\n",
    status);
  rpc_force_rebind(clnt);
  status = rpc_call_sync(clnt, &msg, RPC_TASK_SOFTCONN);
 }
 if (status < 0)
  dprintk("lockd: NSM upcall RPC failed, status=%d\n",
    status);
 else
  status = 0;

 rpc_shutdown_client(clnt);
 return status;
}
