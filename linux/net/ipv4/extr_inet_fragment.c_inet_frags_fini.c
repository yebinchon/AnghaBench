
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_frags {int * frags_cachep; int completion; int refcnt; } ;


 int complete (int *) ;
 int kmem_cache_destroy (int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int wait_for_completion (int *) ;

void inet_frags_fini(struct inet_frags *f)
{
 if (refcount_dec_and_test(&f->refcnt))
  complete(&f->completion);

 wait_for_completion(&f->completion);

 kmem_cache_destroy(f->frags_cachep);
 f->frags_cachep = ((void*)0);
}
