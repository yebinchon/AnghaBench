
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct rpc_pipe {int dummy; } ;
struct net {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* nfs4blocklayout_register_sb (struct super_block*,struct rpc_pipe*) ;
 struct super_block* rpc_get_sb_net (struct net*) ;
 int rpc_put_sb_net (struct net*) ;

__attribute__((used)) static struct dentry *nfs4blocklayout_register_net(struct net *net,
         struct rpc_pipe *pipe)
{
 struct super_block *pipefs_sb;
 struct dentry *dentry;

 pipefs_sb = rpc_get_sb_net(net);
 if (!pipefs_sb)
  return ((void*)0);
 dentry = nfs4blocklayout_register_sb(pipefs_sb, pipe);
 rpc_put_sb_net(net);
 return dentry;
}
