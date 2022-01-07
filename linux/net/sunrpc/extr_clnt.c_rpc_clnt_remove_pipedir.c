
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct rpc_clnt {int dummy; } ;
struct net {int dummy; } ;


 int __rpc_clnt_remove_pipedir (struct rpc_clnt*) ;
 struct super_block* rpc_get_sb_net (struct net*) ;
 struct net* rpc_net_ns (struct rpc_clnt*) ;
 int rpc_put_sb_net (struct net*) ;

__attribute__((used)) static void rpc_clnt_remove_pipedir(struct rpc_clnt *clnt)
{
 struct net *net = rpc_net_ns(clnt);
 struct super_block *pipefs_sb;

 pipefs_sb = rpc_get_sb_net(net);
 if (pipefs_sb) {
  __rpc_clnt_remove_pipedir(clnt);
  rpc_put_sb_net(net);
 }
}
