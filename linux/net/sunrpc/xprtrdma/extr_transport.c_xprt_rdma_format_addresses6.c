
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr {int dummy; } ;
struct rpc_xprt {int * address_strings; } ;
typedef int buf ;


 int GFP_KERNEL ;
 int RPCBIND_NETID_RDMA6 ;
 size_t RPC_DISPLAY_HEX_ADDR ;
 size_t RPC_DISPLAY_NETID ;
 int kstrdup (char*,int ) ;
 int snprintf (char*,int,char*,int *) ;

__attribute__((used)) static void
xprt_rdma_format_addresses6(struct rpc_xprt *xprt, struct sockaddr *sap)
{
 struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)sap;
 char buf[40];

 snprintf(buf, sizeof(buf), "%pi6", &sin6->sin6_addr);
 xprt->address_strings[RPC_DISPLAY_HEX_ADDR] = kstrdup(buf, GFP_KERNEL);

 xprt->address_strings[RPC_DISPLAY_NETID] = RPCBIND_NETID_RDMA6;
}
