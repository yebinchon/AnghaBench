
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_file_mark {int nfm_ref; } ;


 int atomic_inc_not_zero (int *) ;

__attribute__((used)) static struct nfsd_file_mark *
nfsd_file_mark_get(struct nfsd_file_mark *nfm)
{
 if (!atomic_inc_not_zero(&nfm->nfm_ref))
  return ((void*)0);
 return nfm;
}
