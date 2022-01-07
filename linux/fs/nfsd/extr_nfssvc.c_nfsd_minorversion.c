
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nfsd_net {int* nfsd4_minorversions; } ;
typedef enum vers_op { ____Placeholder_vers_op } vers_op ;





 scalar_t__ NFSD_SUPPORTED_MINOR_VERSION ;

 int nfsd_adjust_nfsd_versions4 (struct nfsd_net*) ;
 int nfsd_netns_init_versions (struct nfsd_net*) ;
 int nfsd_vers (struct nfsd_net*,int,int const) ;

int nfsd_minorversion(struct nfsd_net *nn, u32 minorversion, enum vers_op change)
{
 if (minorversion > NFSD_SUPPORTED_MINOR_VERSION &&
     change != 131)
  return -1;

 switch(change) {
 case 129:
  if (nn->nfsd4_minorversions) {
   nfsd_vers(nn, 4, 129);
   nn->nfsd4_minorversions[minorversion] =
    nfsd_vers(nn, 4, 128);
  }
  break;
 case 130:
  nfsd_netns_init_versions(nn);
  if (nn->nfsd4_minorversions) {
   nn->nfsd4_minorversions[minorversion] = 0;
   nfsd_adjust_nfsd_versions4(nn);
  }
  break;
 case 128:
  if (nn->nfsd4_minorversions)
   return nn->nfsd4_minorversions[minorversion];
  return nfsd_vers(nn, 4, 128);
 case 131:
  return minorversion <= NFSD_SUPPORTED_MINOR_VERSION &&
   nfsd_vers(nn, 4, 131);
 }
 return 0;
}
