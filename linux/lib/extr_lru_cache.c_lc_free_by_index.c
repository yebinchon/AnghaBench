
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lru_cache {int lc_cache; int element_off; void** lc_element; } ;


 int WARN_ON (int) ;
 int kmem_cache_free (int ,void*) ;

__attribute__((used)) static void lc_free_by_index(struct lru_cache *lc, unsigned i)
{
 void *p = lc->lc_element[i];
 WARN_ON(!p);
 if (p) {
  p -= lc->element_off;
  kmem_cache_free(lc->lc_cache, p);
 }
}
