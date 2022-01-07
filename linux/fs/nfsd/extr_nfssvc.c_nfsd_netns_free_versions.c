
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int * nfsd4_minorversions; int * nfsd_versions; } ;


 int kfree (int *) ;

void
nfsd_netns_free_versions(struct nfsd_net *nn)
{
 kfree(nn->nfsd_versions);
 kfree(nn->nfsd4_minorversions);
 nn->nfsd_versions = ((void*)0);
 nn->nfsd4_minorversions = ((void*)0);
}
