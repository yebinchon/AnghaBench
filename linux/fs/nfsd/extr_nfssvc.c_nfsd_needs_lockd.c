
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int dummy; } ;


 int NFSD_TEST ;
 scalar_t__ nfsd_vers (struct nfsd_net*,int,int ) ;

__attribute__((used)) static bool nfsd_needs_lockd(struct nfsd_net *nn)
{
 return nfsd_vers(nn, 2, NFSD_TEST) || nfsd_vers(nn, 3, NFSD_TEST);
}
