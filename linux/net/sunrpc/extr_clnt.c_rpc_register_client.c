
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {int rpc_client_lock; int all_clients; } ;
struct rpc_clnt {int cl_clients; } ;
struct net {int dummy; } ;


 int list_add (int *,int *) ;
 struct sunrpc_net* net_generic (struct net*,int ) ;
 struct net* rpc_net_ns (struct rpc_clnt*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sunrpc_net_id ;

__attribute__((used)) static void rpc_register_client(struct rpc_clnt *clnt)
{
 struct net *net = rpc_net_ns(clnt);
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);

 spin_lock(&sn->rpc_client_lock);
 list_add(&clnt->cl_clients, &sn->all_clients);
 spin_unlock(&sn->rpc_client_lock);
}
