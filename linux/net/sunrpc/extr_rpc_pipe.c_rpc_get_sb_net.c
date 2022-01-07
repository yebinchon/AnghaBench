
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct sunrpc_net {int pipefs_sb_lock; struct super_block* pipefs_sb; } ;
struct net {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sunrpc_net* net_generic (struct net const*,int ) ;
 int sunrpc_net_id ;

struct super_block *rpc_get_sb_net(const struct net *net)
{
 struct sunrpc_net *sn = net_generic(net, sunrpc_net_id);

 mutex_lock(&sn->pipefs_sb_lock);
 if (sn->pipefs_sb)
  return sn->pipefs_sb;
 mutex_unlock(&sn->pipefs_sb_lock);
 return ((void*)0);
}
