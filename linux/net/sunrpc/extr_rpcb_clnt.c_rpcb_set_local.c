
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunrpc_net {int rpcb_is_af_local; int rpcb_users; struct rpc_clnt* rpcb_local_clnt4; struct rpc_clnt* rpcb_local_clnt; } ;
struct rpc_clnt {int dummy; } ;
struct TYPE_2__ {int inum; } ;
struct net {TYPE_1__ ns; } ;


 int dprintk (char*,struct rpc_clnt*,struct rpc_clnt*,int ,char*) ;
 struct net init_net ;
 struct sunrpc_net* net_generic (struct net*,int ) ;
 int smp_wmb () ;
 int sunrpc_net_id ;

__attribute__((used)) static void rpcb_set_local(struct net *net, struct rpc_clnt *clnt,
   struct rpc_clnt *clnt4,
   bool is_af_local)
{
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);


 sn->rpcb_local_clnt = clnt;
 sn->rpcb_local_clnt4 = clnt4;
 sn->rpcb_is_af_local = is_af_local ? 1 : 0;
 smp_wmb();
 sn->rpcb_users = 1;
 dprintk("RPC:       created new rpcb local clients (rpcb_local_clnt: "
  "%p, rpcb_local_clnt4: %p) for net %x%s\n",
  sn->rpcb_local_clnt, sn->rpcb_local_clnt4,
  net->ns.inum, (net == &init_net) ? " (init_net)" : "");
}
