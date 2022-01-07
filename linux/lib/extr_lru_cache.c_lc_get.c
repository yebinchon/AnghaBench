
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lru_cache {int dummy; } ;
struct lc_element {int dummy; } ;


 int LC_GET_MAY_CHANGE ;
 struct lc_element* __lc_get (struct lru_cache*,unsigned int,int ) ;

struct lc_element *lc_get(struct lru_cache *lc, unsigned int enr)
{
 return __lc_get(lc, enr, LC_GET_MAY_CHANGE);
}
