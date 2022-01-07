
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_file {int nf_ref; } ;


 int atomic_inc_not_zero (int *) ;
 scalar_t__ likely (int ) ;

struct nfsd_file *
nfsd_file_get(struct nfsd_file *nf)
{
 if (likely(atomic_inc_not_zero(&nf->nf_ref)))
  return nf;
 return ((void*)0);
}
