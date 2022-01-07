
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int rpc_cachedir_depopulate ;
 int rpc_rmdir_depopulate (struct dentry*,int ) ;

void rpc_remove_cache_dir(struct dentry *dentry)
{
 rpc_rmdir_depopulate(dentry, rpc_cachedir_depopulate);
}
