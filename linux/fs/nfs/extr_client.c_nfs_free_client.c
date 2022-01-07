
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {struct nfs_client* cl_acceptor; struct nfs_client* cl_hostname; int cl_nfs_mod; int cl_net; int cl_rpcclient; } ;


 int IS_ERR (int ) ;
 int kfree (struct nfs_client*) ;
 int nfs_fscache_release_client_cookie (struct nfs_client*) ;
 int put_net (int ) ;
 int put_nfs_version (int ) ;
 int rpc_shutdown_client (int ) ;

void nfs_free_client(struct nfs_client *clp)
{
 nfs_fscache_release_client_cookie(clp);


 if (!IS_ERR(clp->cl_rpcclient))
  rpc_shutdown_client(clp->cl_rpcclient);

 put_net(clp->cl_net);
 put_nfs_version(clp->cl_nfs_mod);
 kfree(clp->cl_hostname);
 kfree(clp->cl_acceptor);
 kfree(clp);
}
