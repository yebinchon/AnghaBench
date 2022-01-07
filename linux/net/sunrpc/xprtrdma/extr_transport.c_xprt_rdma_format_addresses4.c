
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct rpc_xprt {int * address_strings; } ;
typedef int buf ;


 int GFP_KERNEL ;
 int RPCBIND_NETID_RDMA ;
 size_t RPC_DISPLAY_HEX_ADDR ;
 size_t RPC_DISPLAY_NETID ;
 int kstrdup (char*,int ) ;
 int ntohl (int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
xprt_rdma_format_addresses4(struct rpc_xprt *xprt, struct sockaddr *sap)
{
 struct sockaddr_in *sin = (struct sockaddr_in *)sap;
 char buf[20];

 snprintf(buf, sizeof(buf), "%08x", ntohl(sin->sin_addr.s_addr));
 xprt->address_strings[RPC_DISPLAY_HEX_ADDR] = kstrdup(buf, GFP_KERNEL);

 xprt->address_strings[RPC_DISPLAY_NETID] = RPCBIND_NETID_RDMA;
}
