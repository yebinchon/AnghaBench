
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_auth_create_args {int pseudoflavor; } ;
struct rpc_auth {int dummy; } ;
struct nfs_server {int client; } ;
struct nfs_fsinfo {int dummy; } ;
struct nfs_fh {int dummy; } ;
typedef int rpc_authflavor_t ;


 int EACCES ;
 scalar_t__ IS_ERR (struct rpc_auth*) ;
 int nfs4_lookup_root (struct nfs_server*,struct nfs_fh*,struct nfs_fsinfo*) ;
 struct rpc_auth* rpcauth_create (struct rpc_auth_create_args*,int ) ;

__attribute__((used)) static int nfs4_lookup_root_sec(struct nfs_server *server, struct nfs_fh *fhandle,
    struct nfs_fsinfo *info, rpc_authflavor_t flavor)
{
 struct rpc_auth_create_args auth_args = {
  .pseudoflavor = flavor,
 };
 struct rpc_auth *auth;

 auth = rpcauth_create(&auth_args, server->client);
 if (IS_ERR(auth))
  return -EACCES;
 return nfs4_lookup_root(server, fhandle, info);
}
