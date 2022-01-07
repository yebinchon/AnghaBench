
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {scalar_t__* nfsd4_minorversions; } ;


 int NFSD_CLEAR ;
 unsigned int NFSD_SUPPORTED_MINOR_VERSION ;
 int nfsd_vers (struct nfsd_net*,int,int ) ;

__attribute__((used)) static void
nfsd_adjust_nfsd_versions4(struct nfsd_net *nn)
{
 unsigned i;

 for (i = 0; i <= NFSD_SUPPORTED_MINOR_VERSION; i++) {
  if (nn->nfsd4_minorversions[i])
   return;
 }
 nfsd_vers(nn, 4, NFSD_CLEAR);
}
