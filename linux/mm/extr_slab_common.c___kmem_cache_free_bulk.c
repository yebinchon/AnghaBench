
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;


 int kfree (void*) ;
 int kmem_cache_free (struct kmem_cache*,void*) ;

void __kmem_cache_free_bulk(struct kmem_cache *s, size_t nr, void **p)
{
 size_t i;

 for (i = 0; i < nr; i++) {
  if (s)
   kmem_cache_free(s, p[i]);
  else
   kfree(p[i]);
 }
}
