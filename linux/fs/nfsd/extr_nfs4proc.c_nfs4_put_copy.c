
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_copy {int refcount; } ;


 int kfree (struct nfsd4_copy*) ;
 int refcount_dec_and_test (int *) ;

void nfs4_put_copy(struct nfsd4_copy *copy)
{
 if (!refcount_dec_and_test(&copy->refcount))
  return;
 kfree(copy);
}
