
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lru_cache {unsigned int nr_elements; struct lc_element** lc_element; } ;
struct lc_element {unsigned int lc_index; } ;


 int BUG_ON (int) ;

struct lc_element *lc_element_by_index(struct lru_cache *lc, unsigned i)
{
 BUG_ON(i >= lc->nr_elements);
 BUG_ON(lc->lc_element[i] == ((void*)0));
 BUG_ON(lc->lc_element[i]->lc_index != i);
 return lc->lc_element[i];
}
