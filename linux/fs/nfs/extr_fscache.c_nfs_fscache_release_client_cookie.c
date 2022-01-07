
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int * fscache; } ;


 int FSCACHE ;
 int dfprintk (int ,char*,struct nfs_client*,int *) ;
 int fscache_relinquish_cookie (int *,int *,int) ;

void nfs_fscache_release_client_cookie(struct nfs_client *clp)
{
 dfprintk(FSCACHE, "NFS: releasing client cookie (0x%p/0x%p)\n",
   clp, clp->fscache);

 fscache_relinquish_cookie(clp->fscache, ((void*)0), 0);
 clp->fscache = ((void*)0);
}
