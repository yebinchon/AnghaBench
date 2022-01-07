
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refs; } ;
typedef TYPE_1__ refcount_t ;


 unsigned int UINT_MAX ;
 int WARN_ONCE (int,char*) ;
 unsigned int atomic_read (int *) ;
 int atomic_try_cmpxchg_release (int *,unsigned int*,unsigned int) ;
 scalar_t__ unlikely (int) ;

bool refcount_dec_not_one(refcount_t *r)
{
 unsigned int new, val = atomic_read(&r->refs);

 do {
  if (unlikely(val == UINT_MAX))
   return 1;

  if (val == 1)
   return 0;

  new = val - 1;
  if (new > val) {
   WARN_ONCE(new > val, "refcount_t: underflow; use-after-free.\n");
   return 1;
  }

 } while (!atomic_try_cmpxchg_release(&r->refs, &val, new));

 return 1;
}
