
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lru_cache {int lru; int free; } ;


 int list_empty (int *) ;

__attribute__((used)) static int lc_unused_element_available(struct lru_cache *lc)
{
 if (!list_empty(&lc->free))
  return 1;
 if (!list_empty(&lc->lru))
  return 1;

 return 0;
}
