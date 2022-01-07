
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {int rpcb_local_clnt4; } ;
struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr {int dummy; } ;
struct rpcbind_args {int r_addr; int r_netid; int r_vers; int r_prog; } ;
struct rpc_message {int * rpc_proc; struct rpcbind_args* rpc_argp; } ;


 int GFP_KERNEL ;
 size_t RPCBPROC_SET ;
 size_t RPCBPROC_UNSET ;
 int dprintk (char*,char*,int ,int ,int ,int ) ;
 int kfree (int ) ;
 unsigned short ntohs (int ) ;
 int rpc_sockaddr2uaddr (struct sockaddr const*,int ) ;
 int * rpcb_procedures4 ;
 int rpcb_register_call (struct sunrpc_net*,int ,struct rpc_message*,int) ;

__attribute__((used)) static int rpcb_register_inet6(struct sunrpc_net *sn,
          const struct sockaddr *sap,
          struct rpc_message *msg)
{
 const struct sockaddr_in6 *sin6 = (const struct sockaddr_in6 *)sap;
 struct rpcbind_args *map = msg->rpc_argp;
 unsigned short port = ntohs(sin6->sin6_port);
 bool is_set = 0;
 int result;

 map->r_addr = rpc_sockaddr2uaddr(sap, GFP_KERNEL);

 dprintk("RPC:       %sregistering [%u, %u, %s, '%s'] with "
  "local rpcbind\n", (port ? "" : "un"),
   map->r_prog, map->r_vers,
   map->r_addr, map->r_netid);

 msg->rpc_proc = &rpcb_procedures4[RPCBPROC_UNSET];
 if (port != 0) {
  msg->rpc_proc = &rpcb_procedures4[RPCBPROC_SET];
  is_set = 1;
 }

 result = rpcb_register_call(sn, sn->rpcb_local_clnt4, msg, is_set);
 kfree(map->r_addr);
 return result;
}
