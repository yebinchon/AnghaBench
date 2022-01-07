
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lru_cache {int dummy; } ;
struct lc_element {scalar_t__ refcnt; } ;


 struct lc_element* __lc_find (struct lru_cache*,unsigned int,int) ;

bool lc_is_used(struct lru_cache *lc, unsigned int enr)
{
 struct lc_element *e = __lc_find(lc, enr, 1);
 return e && e->refcnt;
}
