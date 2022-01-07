
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_xprt_switch {int dummy; } ;
struct rpc_xprt {TYPE_2__* bc_xprt; } ;
struct rpc_create_args {int protocol; int flags; TYPE_1__* bc_xprt; } ;
struct rpc_clnt {int cl_softrtry; int cl_softerr; int cl_autobind; int cl_noretranstimeo; int cl_discrtry; int cl_chatty; } ;
struct TYPE_4__ {struct rpc_xprt_switch* xpt_bc_xps; } ;
struct TYPE_3__ {struct rpc_xprt_switch* xpt_bc_xps; } ;


 int ENOMEM ;
 struct rpc_clnt* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct rpc_clnt*) ;
 int RPC_CLNT_CREATE_AUTOBIND ;
 int RPC_CLNT_CREATE_DISCRTRY ;
 int RPC_CLNT_CREATE_HARDRTRY ;
 int RPC_CLNT_CREATE_NOPING ;
 int RPC_CLNT_CREATE_NO_RETRANS_TIMEOUT ;
 int RPC_CLNT_CREATE_QUIET ;
 int RPC_CLNT_CREATE_SOFTERR ;
 int WARN_ON_ONCE (int) ;
 int XPRT_TRANSPORT_BC ;
 struct rpc_clnt* rpc_new_client (struct rpc_create_args*,struct rpc_xprt_switch*,struct rpc_xprt*,int *) ;
 int rpc_ping (struct rpc_clnt*) ;
 int rpc_shutdown_client (struct rpc_clnt*) ;
 int xprt_put (struct rpc_xprt*) ;
 struct rpc_xprt_switch* xprt_switch_alloc (struct rpc_xprt*,int ) ;
 int xprt_switch_get (struct rpc_xprt_switch*) ;

__attribute__((used)) static struct rpc_clnt *rpc_create_xprt(struct rpc_create_args *args,
     struct rpc_xprt *xprt)
{
 struct rpc_clnt *clnt = ((void*)0);
 struct rpc_xprt_switch *xps;

 if (args->bc_xprt && args->bc_xprt->xpt_bc_xps) {
  WARN_ON_ONCE(!(args->protocol & XPRT_TRANSPORT_BC));
  xps = args->bc_xprt->xpt_bc_xps;
  xprt_switch_get(xps);
 } else {
  xps = xprt_switch_alloc(xprt, GFP_KERNEL);
  if (xps == ((void*)0)) {
   xprt_put(xprt);
   return ERR_PTR(-ENOMEM);
  }
  if (xprt->bc_xprt) {
   xprt_switch_get(xps);
   xprt->bc_xprt->xpt_bc_xps = xps;
  }
 }
 clnt = rpc_new_client(args, xps, xprt, ((void*)0));
 if (IS_ERR(clnt))
  return clnt;

 if (!(args->flags & RPC_CLNT_CREATE_NOPING)) {
  int err = rpc_ping(clnt);
  if (err != 0) {
   rpc_shutdown_client(clnt);
   return ERR_PTR(err);
  }
 }

 clnt->cl_softrtry = 1;
 if (args->flags & (RPC_CLNT_CREATE_HARDRTRY|RPC_CLNT_CREATE_SOFTERR)) {
  clnt->cl_softrtry = 0;
  if (args->flags & RPC_CLNT_CREATE_SOFTERR)
   clnt->cl_softerr = 1;
 }

 if (args->flags & RPC_CLNT_CREATE_AUTOBIND)
  clnt->cl_autobind = 1;
 if (args->flags & RPC_CLNT_CREATE_NO_RETRANS_TIMEOUT)
  clnt->cl_noretranstimeo = 1;
 if (args->flags & RPC_CLNT_CREATE_DISCRTRY)
  clnt->cl_discrtry = 1;
 if (!(args->flags & RPC_CLNT_CREATE_QUIET))
  clnt->cl_chatty = 1;

 return clnt;
}
