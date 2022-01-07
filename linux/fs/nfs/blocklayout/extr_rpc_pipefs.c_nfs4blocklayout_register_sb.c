
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct rpc_pipe {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 int NFS_PIPE_DIRNAME ;
 int dput (struct dentry*) ;
 struct dentry* rpc_d_lookup_sb (struct super_block*,int ) ;
 struct dentry* rpc_mkpipe_dentry (struct dentry*,char*,int *,struct rpc_pipe*) ;

__attribute__((used)) static struct dentry *nfs4blocklayout_register_sb(struct super_block *sb,
         struct rpc_pipe *pipe)
{
 struct dentry *dir, *dentry;

 dir = rpc_d_lookup_sb(sb, NFS_PIPE_DIRNAME);
 if (dir == ((void*)0))
  return ERR_PTR(-ENOENT);
 dentry = rpc_mkpipe_dentry(dir, "blocklayout", ((void*)0), pipe);
 dput(dir);
 return dentry;
}
