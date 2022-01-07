
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lru_cache {unsigned int nr_elements; struct lru_cache* lc_slot; struct lru_cache* lc_element; } ;


 int kfree (struct lru_cache*) ;
 int lc_free_by_index (struct lru_cache*,unsigned int) ;

void lc_destroy(struct lru_cache *lc)
{
 unsigned i;
 if (!lc)
  return;
 for (i = 0; i < lc->nr_elements; i++)
  lc_free_by_index(lc, i);
 kfree(lc->lc_element);
 kfree(lc->lc_slot);
 kfree(lc);
}
