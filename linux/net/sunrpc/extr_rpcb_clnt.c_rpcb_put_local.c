
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {scalar_t__ rpcb_users; int rpcb_clnt_lock; struct rpc_clnt* rpcb_local_clnt4; struct rpc_clnt* rpcb_local_clnt; } ;
struct rpc_clnt {int dummy; } ;
struct net {int dummy; } ;


 struct sunrpc_net* net_generic (struct net*,int ) ;
 int rpc_shutdown_client (struct rpc_clnt*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sunrpc_net_id ;

void rpcb_put_local(struct net *net)
{
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);
 struct rpc_clnt *clnt = sn->rpcb_local_clnt;
 struct rpc_clnt *clnt4 = sn->rpcb_local_clnt4;
 int shutdown = 0;

 spin_lock(&sn->rpcb_clnt_lock);
 if (sn->rpcb_users) {
  if (--sn->rpcb_users == 0) {
   sn->rpcb_local_clnt = ((void*)0);
   sn->rpcb_local_clnt4 = ((void*)0);
  }
  shutdown = !sn->rpcb_users;
 }
 spin_unlock(&sn->rpcb_clnt_lock);

 if (shutdown) {



  if (clnt4)
   rpc_shutdown_client(clnt4);
  if (clnt)
   rpc_shutdown_client(clnt);
 }
}
