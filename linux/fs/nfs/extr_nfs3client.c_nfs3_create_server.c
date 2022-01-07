
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_subversion {int dummy; } ;
struct nfs_server {int dummy; } ;
struct nfs_mount_info {int dummy; } ;


 int IS_ERR (struct nfs_server*) ;
 struct nfs_server* nfs_create_server (struct nfs_mount_info*,struct nfs_subversion*) ;
 int nfs_init_server_aclclient (struct nfs_server*) ;

struct nfs_server *nfs3_create_server(struct nfs_mount_info *mount_info,
          struct nfs_subversion *nfs_mod)
{
 struct nfs_server *server = nfs_create_server(mount_info, nfs_mod);

 if (!IS_ERR(server))
  nfs_init_server_aclclient(server);
 return server;
}
