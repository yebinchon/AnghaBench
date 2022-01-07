
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int NFS_CAP_READDIRPLUS ;
 int d_inode (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 int nfs_force_use_readdirplus (int ) ;
 int nfs_server_capable (int ,int ) ;

__attribute__((used)) static void nfs_readdirplus_parent_cache_miss(struct dentry *dentry)
{
 struct dentry *parent;

 if (!nfs_server_capable(d_inode(dentry), NFS_CAP_READDIRPLUS))
  return;
 parent = dget_parent(dentry);
 nfs_force_use_readdirplus(d_inode(parent));
 dput(parent);
}
