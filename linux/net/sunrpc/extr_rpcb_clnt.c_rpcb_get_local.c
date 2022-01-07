
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {int rpcb_users; int rpcb_clnt_lock; } ;
struct net {int dummy; } ;


 struct sunrpc_net* net_generic (struct net*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sunrpc_net_id ;

__attribute__((used)) static int rpcb_get_local(struct net *net)
{
 int cnt;
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);

 spin_lock(&sn->rpcb_clnt_lock);
 if (sn->rpcb_users)
  sn->rpcb_users++;
 cnt = sn->rpcb_users;
 spin_unlock(&sn->rpcb_clnt_lock);

 return cnt;
}
