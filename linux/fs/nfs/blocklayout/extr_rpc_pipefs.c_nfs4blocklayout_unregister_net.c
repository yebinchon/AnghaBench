
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct rpc_pipe {int dummy; } ;
struct net {int dummy; } ;


 int nfs4blocklayout_unregister_sb (struct super_block*,struct rpc_pipe*) ;
 struct super_block* rpc_get_sb_net (struct net*) ;
 int rpc_put_sb_net (struct net*) ;

__attribute__((used)) static void nfs4blocklayout_unregister_net(struct net *net,
        struct rpc_pipe *pipe)
{
 struct super_block *pipefs_sb;

 pipefs_sb = rpc_get_sb_net(net);
 if (pipefs_sb) {
  nfs4blocklayout_unregister_sb(pipefs_sb, pipe);
  rpc_put_sb_net(net);
 }
}
