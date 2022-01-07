
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client_initdata {int dummy; } ;
struct nfs_client {scalar_t__ cl_cons_state; } ;


 int ERESTARTSYS ;
 struct nfs_client* ERR_PTR (int) ;
 scalar_t__ NFS_CS_READY ;
 int nfs_put_client (struct nfs_client*) ;
 int nfs_wait_client_init_complete (struct nfs_client*) ;
 int smp_rmb () ;

__attribute__((used)) static struct nfs_client *
nfs_found_client(const struct nfs_client_initdata *cl_init,
   struct nfs_client *clp)
{
 int error;

 error = nfs_wait_client_init_complete(clp);
 if (error < 0) {
  nfs_put_client(clp);
  return ERR_PTR(-ERESTARTSYS);
 }

 if (clp->cl_cons_state < NFS_CS_READY) {
  error = clp->cl_cons_state;
  nfs_put_client(clp);
  return ERR_PTR(error);
 }

 smp_rmb();
 return clp;
}
