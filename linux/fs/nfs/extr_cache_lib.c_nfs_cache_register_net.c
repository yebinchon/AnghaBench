
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct net {int dummy; } ;
struct cache_detail {int dummy; } ;


 int nfs_cache_register_sb (struct super_block*,struct cache_detail*) ;
 struct super_block* rpc_get_sb_net (struct net*) ;
 int rpc_put_sb_net (struct net*) ;
 int sunrpc_destroy_cache_detail (struct cache_detail*) ;
 int sunrpc_init_cache_detail (struct cache_detail*) ;

int nfs_cache_register_net(struct net *net, struct cache_detail *cd)
{
 struct super_block *pipefs_sb;
 int ret = 0;

 sunrpc_init_cache_detail(cd);
 pipefs_sb = rpc_get_sb_net(net);
 if (pipefs_sb) {
  ret = nfs_cache_register_sb(pipefs_sb, cd);
  rpc_put_sb_net(net);
  if (ret)
   sunrpc_destroy_cache_detail(cd);
 }
 return ret;
}
