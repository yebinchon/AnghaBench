
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_family; } ;
struct rpc_xprt {char** address_strings; } ;
typedef int buf ;




 int GFP_KERNEL ;
 size_t RPC_DISPLAY_ADDR ;
 size_t RPC_DISPLAY_HEX_PORT ;
 size_t RPC_DISPLAY_PORT ;
 size_t RPC_DISPLAY_PROTO ;
 void* kstrdup (char*,int ) ;
 int pr_err (char*) ;
 int rpc_get_port (struct sockaddr*) ;
 int rpc_ntop (struct sockaddr*,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 int xprt_rdma_format_addresses4 (struct rpc_xprt*,struct sockaddr*) ;
 int xprt_rdma_format_addresses6 (struct rpc_xprt*,struct sockaddr*) ;

void
xprt_rdma_format_addresses(struct rpc_xprt *xprt, struct sockaddr *sap)
{
 char buf[128];

 switch (sap->sa_family) {
 case 129:
  xprt_rdma_format_addresses4(xprt, sap);
  break;
 case 128:
  xprt_rdma_format_addresses6(xprt, sap);
  break;
 default:
  pr_err("rpcrdma: Unrecognized address family\n");
  return;
 }

 (void)rpc_ntop(sap, buf, sizeof(buf));
 xprt->address_strings[RPC_DISPLAY_ADDR] = kstrdup(buf, GFP_KERNEL);

 snprintf(buf, sizeof(buf), "%u", rpc_get_port(sap));
 xprt->address_strings[RPC_DISPLAY_PORT] = kstrdup(buf, GFP_KERNEL);

 snprintf(buf, sizeof(buf), "%4hx", rpc_get_port(sap));
 xprt->address_strings[RPC_DISPLAY_HEX_PORT] = kstrdup(buf, GFP_KERNEL);

 xprt->address_strings[RPC_DISPLAY_PROTO] = "rdma";
}
