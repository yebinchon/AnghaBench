
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int nfsd4_minorversions; scalar_t__ nfsd_versions; } ;


 int nfsd_alloc_minorversions () ;
 scalar_t__ nfsd_alloc_versions () ;
 int nfsd_netns_free_versions (struct nfsd_net*) ;

__attribute__((used)) static void
nfsd_netns_init_versions(struct nfsd_net *nn)
{
 if (!nn->nfsd_versions) {
  nn->nfsd_versions = nfsd_alloc_versions();
  nn->nfsd4_minorversions = nfsd_alloc_minorversions();
  if (!nn->nfsd_versions || !nn->nfsd4_minorversions)
   nfsd_netns_free_versions(nn);
 }
}
