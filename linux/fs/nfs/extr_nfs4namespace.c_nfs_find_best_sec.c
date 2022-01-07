
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cred {int cl_auth; } ;
struct rpc_clnt {int cl_auth; } ;
struct nfs_server {int auth_info; } ;
struct nfs4_secinfo_flavors {unsigned int num_flavors; struct nfs4_secinfo4* flavors; } ;
struct nfs4_secinfo4 {int flavor; int flavor_info; } ;
typedef int rpc_authflavor_t ;


 int EPERM ;
 struct rpc_cred* ERR_PTR (int ) ;
 int IS_ERR (struct rpc_cred*) ;

 int RPC_AUTH_MAXFLAVOR ;


 int nfs_auth_info_match (int *,int ) ;
 int put_rpccred (struct rpc_cred*) ;
 struct rpc_cred* rpc_clone_client_set_auth (struct rpc_cred*,int ) ;
 int rpc_shutdown_client (struct rpc_cred*) ;
 int rpcauth_get_pseudoflavor (int,int *) ;
 struct rpc_cred* rpcauth_lookupcred (int ,int ) ;

__attribute__((used)) static struct rpc_clnt *nfs_find_best_sec(struct rpc_clnt *clnt,
       struct nfs_server *server,
       struct nfs4_secinfo_flavors *flavors)
{
 rpc_authflavor_t pflavor;
 struct nfs4_secinfo4 *secinfo;
 unsigned int i;

 for (i = 0; i < flavors->num_flavors; i++) {
  secinfo = &flavors->flavors[i];

  switch (secinfo->flavor) {
  case 129:
  case 128:
  case 130:
   pflavor = rpcauth_get_pseudoflavor(secinfo->flavor,
       &secinfo->flavor_info);

   if (pflavor != RPC_AUTH_MAXFLAVOR &&
       nfs_auth_info_match(&server->auth_info, pflavor)) {
    struct rpc_clnt *new;
    struct rpc_cred *cred;


    new = rpc_clone_client_set_auth(clnt, pflavor);
    if (IS_ERR(new))
     continue;





    cred = rpcauth_lookupcred(new->cl_auth, 0);
    if (IS_ERR(cred)) {
     rpc_shutdown_client(new);
     continue;
    }
    put_rpccred(cred);
    return new;
   }
  }
 }
 return ERR_PTR(-EPERM);
}
