
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xprt_create {int ident; char* servername; int flags; TYPE_1__* bc_xprt; int addrlen; TYPE_2__* dstaddr; int srcaddr; int net; } ;
struct sockaddr_un {char* sun_path; } ;
struct sockaddr_in6 {char sin6_addr; } ;
struct TYPE_6__ {char s_addr; } ;
struct sockaddr_in {TYPE_3__ sin_addr; } ;
struct rpc_xprt {int resvport; } ;
struct rpc_create_args {int protocol; char* servername; int flags; int nconnect; TYPE_2__* address; TYPE_1__* bc_xprt; int addrsize; int saddress; int net; } ;
struct rpc_clnt {int resvport; } ;
typedef int servername ;
struct TYPE_5__ {int sa_family; } ;
struct TYPE_4__ {struct rpc_xprt* xpt_bc_xprt; } ;





 int EINVAL ;
 struct rpc_xprt* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct rpc_xprt*) ;
 int RPC_CLNT_CREATE_INFINITE_SLOTS ;
 int RPC_CLNT_CREATE_NONPRIVPORT ;
 int RPC_CLNT_CREATE_NO_IDLE_TIMEOUT ;
 int WARN_ON_ONCE (int) ;
 int XPRT_CREATE_INFINITE_SLOTS ;
 int XPRT_CREATE_NO_IDLE_TIMEOUT ;
 int XPRT_TRANSPORT_BC ;
 scalar_t__ rpc_clnt_add_xprt (struct rpc_xprt*,struct xprt_create*,int *,int *) ;
 struct rpc_xprt* rpc_create_xprt (struct rpc_create_args*,struct rpc_xprt*) ;
 int snprintf (char*,int,char*,char*) ;
 struct rpc_xprt* xprt_create_transport (struct xprt_create*) ;
 int xprt_get (struct rpc_xprt*) ;

struct rpc_clnt *rpc_create(struct rpc_create_args *args)
{
 struct rpc_xprt *xprt;
 struct xprt_create xprtargs = {
  .net = args->net,
  .ident = args->protocol,
  .srcaddr = args->saddress,
  .dstaddr = args->address,
  .addrlen = args->addrsize,
  .servername = args->servername,
  .bc_xprt = args->bc_xprt,
 };
 char servername[48];
 struct rpc_clnt *clnt;
 int i;

 if (args->bc_xprt) {
  WARN_ON_ONCE(!(args->protocol & XPRT_TRANSPORT_BC));
  xprt = args->bc_xprt->xpt_bc_xprt;
  if (xprt) {
   xprt_get(xprt);
   return rpc_create_xprt(args, xprt);
  }
 }

 if (args->flags & RPC_CLNT_CREATE_INFINITE_SLOTS)
  xprtargs.flags |= XPRT_CREATE_INFINITE_SLOTS;
 if (args->flags & RPC_CLNT_CREATE_NO_IDLE_TIMEOUT)
  xprtargs.flags |= XPRT_CREATE_NO_IDLE_TIMEOUT;




 if (xprtargs.servername == ((void*)0)) {
  struct sockaddr_un *sun =
    (struct sockaddr_un *)args->address;
  struct sockaddr_in *sin =
    (struct sockaddr_in *)args->address;
  struct sockaddr_in6 *sin6 =
    (struct sockaddr_in6 *)args->address;

  servername[0] = '\0';
  switch (args->address->sa_family) {
  case 128:
   snprintf(servername, sizeof(servername), "%s",
     sun->sun_path);
   break;
  case 130:
   snprintf(servername, sizeof(servername), "%pI4",
     &sin->sin_addr.s_addr);
   break;
  case 129:
   snprintf(servername, sizeof(servername), "%pI6",
     &sin6->sin6_addr);
   break;
  default:


   return ERR_PTR(-EINVAL);
  }
  xprtargs.servername = servername;
 }

 xprt = xprt_create_transport(&xprtargs);
 if (IS_ERR(xprt))
  return (struct rpc_clnt *)xprt;







 xprt->resvport = 1;
 if (args->flags & RPC_CLNT_CREATE_NONPRIVPORT)
  xprt->resvport = 0;

 clnt = rpc_create_xprt(args, xprt);
 if (IS_ERR(clnt) || args->nconnect <= 1)
  return clnt;

 for (i = 0; i < args->nconnect - 1; i++) {
  if (rpc_clnt_add_xprt(clnt, &xprtargs, ((void*)0), ((void*)0)) < 0)
   break;
 }
 return clnt;
}
