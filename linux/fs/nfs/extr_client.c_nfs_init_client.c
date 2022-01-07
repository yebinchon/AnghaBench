
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client_initdata {int dummy; } ;
struct nfs_client {scalar_t__ cl_cons_state; } ;


 struct nfs_client* ERR_PTR (int) ;
 scalar_t__ NFS_CS_READY ;
 int RPC_AUTH_UNIX ;
 int nfs_create_rpc_client (struct nfs_client*,struct nfs_client_initdata const*,int ) ;
 int nfs_mark_client_ready (struct nfs_client*,scalar_t__) ;
 int nfs_put_client (struct nfs_client*) ;

struct nfs_client *nfs_init_client(struct nfs_client *clp,
       const struct nfs_client_initdata *cl_init)
{
 int error;


 if (clp->cl_cons_state == NFS_CS_READY)
  return clp;





 error = nfs_create_rpc_client(clp, cl_init, RPC_AUTH_UNIX);
 nfs_mark_client_ready(clp, error == 0 ? NFS_CS_READY : error);
 if (error < 0) {
  nfs_put_client(clp);
  clp = ERR_PTR(error);
 }
 return clp;
}
