
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int dummy; } ;


 int nfs4_shutdown_client (struct nfs_client*) ;
 int nfs_free_client (struct nfs_client*) ;

void nfs4_free_client(struct nfs_client *clp)
{
 nfs4_shutdown_client(clp);
 nfs_free_client(clp);
}
