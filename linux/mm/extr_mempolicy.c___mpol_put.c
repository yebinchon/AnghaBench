
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mempolicy {int refcnt; } ;


 int atomic_dec_and_test (int *) ;
 int kmem_cache_free (int ,struct mempolicy*) ;
 int policy_cache ;

void __mpol_put(struct mempolicy *p)
{
 if (!atomic_dec_and_test(&p->refcnt))
  return;
 kmem_cache_free(policy_cache, p);
}
