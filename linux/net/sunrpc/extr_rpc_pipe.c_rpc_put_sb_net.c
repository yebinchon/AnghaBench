
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunrpc_net {int pipefs_sb_lock; int * pipefs_sb; } ;
struct net {int dummy; } ;


 int WARN_ON (int ) ;
 int mutex_unlock (int *) ;
 struct sunrpc_net* net_generic (struct net const*,int ) ;
 int sunrpc_net_id ;

void rpc_put_sb_net(const struct net *net)
{
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);

 WARN_ON(sn->pipefs_sb == ((void*)0));
 mutex_unlock(&sn->pipefs_sb_lock);
}
