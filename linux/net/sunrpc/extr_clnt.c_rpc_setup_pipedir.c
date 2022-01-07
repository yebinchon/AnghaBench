
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct rpc_clnt {TYPE_1__* cl_program; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int * pipe_dir_name; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 struct dentry* rpc_setup_pipedir_sb (struct super_block*,struct rpc_clnt*) ;

__attribute__((used)) static int
rpc_setup_pipedir(struct super_block *pipefs_sb, struct rpc_clnt *clnt)
{
 struct dentry *dentry;

 if (clnt->cl_program->pipe_dir_name != ((void*)0)) {
  dentry = rpc_setup_pipedir_sb(pipefs_sb, clnt);
  if (IS_ERR(dentry))
   return PTR_ERR(dentry);
 }
 return 0;
}
