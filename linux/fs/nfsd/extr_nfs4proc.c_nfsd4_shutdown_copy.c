
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_copy {int dummy; } ;
struct nfs4_client {int dummy; } ;


 struct nfsd4_copy* nfsd4_get_copy (struct nfs4_client*) ;
 int nfsd4_stop_copy (struct nfsd4_copy*) ;

void nfsd4_shutdown_copy(struct nfs4_client *clp)
{
 struct nfsd4_copy *copy;

 while ((copy = nfsd4_get_copy(clp)) != ((void*)0))
  nfsd4_stop_copy(copy);
}
