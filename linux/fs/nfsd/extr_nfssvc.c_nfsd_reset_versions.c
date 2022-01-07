
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int dummy; } ;


 int NFSD_NRVERS ;
 int NFSD_SET ;
 int NFSD_TEST ;
 scalar_t__ nfsd_minorversion (struct nfsd_net*,int,int ) ;
 scalar_t__ nfsd_vers (struct nfsd_net*,int,int ) ;

void nfsd_reset_versions(struct nfsd_net *nn)
{
 int i;

 for (i = 0; i < NFSD_NRVERS; i++)
  if (nfsd_vers(nn, i, NFSD_TEST))
   return;

 for (i = 0; i < NFSD_NRVERS; i++)
  if (i != 4)
   nfsd_vers(nn, i, NFSD_SET);
  else {
   int minor = 0;
   while (nfsd_minorversion(nn, minor, NFSD_SET) >= 0)
    minor++;
  }
}
