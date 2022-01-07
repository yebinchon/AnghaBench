
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int dummy; } ;
struct nfs_mount_info {int set_security; } ;
struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 struct dentry* ERR_CAST (struct nfs_server*) ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct nfs_server*) ;
 struct nfs_server* nfs4_create_server (struct nfs_mount_info*,int *) ;
 struct dentry* nfs_fs_mount_common (struct nfs_server*,int,char const*,struct nfs_mount_info*,int *) ;
 int nfs_set_sb_security ;
 int nfs_v4 ;

__attribute__((used)) static struct dentry *
nfs4_remote_mount(struct file_system_type *fs_type, int flags,
    const char *dev_name, void *info)
{
 struct nfs_mount_info *mount_info = info;
 struct nfs_server *server;
 struct dentry *mntroot = ERR_PTR(-ENOMEM);

 mount_info->set_security = nfs_set_sb_security;


 server = nfs4_create_server(mount_info, &nfs_v4);
 if (IS_ERR(server)) {
  mntroot = ERR_CAST(server);
  goto out;
 }

 mntroot = nfs_fs_mount_common(server, flags, dev_name, mount_info, &nfs_v4);

out:
 return mntroot;
}
