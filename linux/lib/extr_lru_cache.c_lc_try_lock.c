
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lru_cache {unsigned long flags; } ;


 unsigned long LC_LOCKED ;
 unsigned long LC_PARANOIA ;
 unsigned long cmpxchg (unsigned long*,unsigned long,unsigned long) ;
 scalar_t__ unlikely (int) ;

int lc_try_lock(struct lru_cache *lc)
{
 unsigned long val;
 do {
  val = cmpxchg(&lc->flags, 0, LC_LOCKED);
 } while (unlikely (val == LC_PARANOIA));

 return 0 == val;
}
