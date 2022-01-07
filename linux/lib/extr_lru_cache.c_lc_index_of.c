
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lru_cache {int dummy; } ;
struct lc_element {unsigned int lc_index; } ;


 int PARANOIA_LC_ELEMENT (struct lru_cache*,struct lc_element*) ;

unsigned int lc_index_of(struct lru_cache *lc, struct lc_element *e)
{
 PARANOIA_LC_ELEMENT(lc, e);
 return e->lc_index;
}
