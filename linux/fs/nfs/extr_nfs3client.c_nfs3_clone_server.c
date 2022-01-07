
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {struct nfs_server* client_acl; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
typedef int rpc_authflavor_t ;


 int IS_ERR (struct nfs_server*) ;
 struct nfs_server* nfs_clone_server (struct nfs_server*,struct nfs_fh*,struct nfs_fattr*,int ) ;
 int nfs_init_server_aclclient (struct nfs_server*) ;

struct nfs_server *nfs3_clone_server(struct nfs_server *source,
         struct nfs_fh *fh,
         struct nfs_fattr *fattr,
         rpc_authflavor_t flavor)
{
 struct nfs_server *server = nfs_clone_server(source, fh, fattr, flavor);
 if (!IS_ERR(server) && !IS_ERR(source->client_acl))
  nfs_init_server_aclclient(server);
 return server;
}
