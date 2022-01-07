
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int* nfsd_versions; } ;
typedef enum vers_op { ____Placeholder_vers_op } vers_op ;




 int NFSD_MINVERS ;
 int NFSD_NRVERS ;


 int nfsd_netns_init_versions (struct nfsd_net*) ;
 int nfsd_support_version (int) ;

int nfsd_vers(struct nfsd_net *nn, int vers, enum vers_op change)
{
 if (vers < NFSD_MINVERS || vers >= NFSD_NRVERS)
  return 0;
 switch(change) {
 case 129:
  if (nn->nfsd_versions)
   nn->nfsd_versions[vers] = nfsd_support_version(vers);
  break;
 case 130:
  nfsd_netns_init_versions(nn);
  if (nn->nfsd_versions)
   nn->nfsd_versions[vers] = 0;
  break;
 case 128:
  if (nn->nfsd_versions)
   return nn->nfsd_versions[vers];

 case 131:
  return nfsd_support_version(vers);
 }
 return 0;
}
