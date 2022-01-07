
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {struct dentry* d_parent; } ;


 int __rpc_depopulate (struct dentry*,int ,int ,int) ;
 int __rpc_rmpipe (int ,struct dentry*) ;
 int d_inode (struct dentry*) ;
 int dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int gssd_dummy_clnt_dir ;
 int gssd_dummy_info_file ;

__attribute__((used)) static void
rpc_gssd_dummy_depopulate(struct dentry *pipe_dentry)
{
 struct dentry *clnt_dir = pipe_dentry->d_parent;
 struct dentry *gssd_dir = clnt_dir->d_parent;

 dget(pipe_dentry);
 __rpc_rmpipe(d_inode(clnt_dir), pipe_dentry);
 __rpc_depopulate(clnt_dir, gssd_dummy_info_file, 0, 1);
 __rpc_depopulate(gssd_dir, gssd_dummy_clnt_dir, 0, 1);
 dput(pipe_dentry);
}
