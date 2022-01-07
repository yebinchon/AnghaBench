
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct rpc_pipe {int dummy; } ;
struct net {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* nfsd4_cld_register_sb (struct super_block*,struct rpc_pipe*) ;
 struct super_block* rpc_get_sb_net (struct net*) ;
 int rpc_put_sb_net (struct net*) ;

__attribute__((used)) static struct dentry *
nfsd4_cld_register_net(struct net *net, struct rpc_pipe *pipe)
{
 struct super_block *sb;
 struct dentry *dentry;

 sb = rpc_get_sb_net(net);
 if (!sb)
  return ((void*)0);
 dentry = nfsd4_cld_register_sb(sb, pipe);
 rpc_put_sb_net(net);
 return dentry;
}
