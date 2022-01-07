
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
 int atomic_try_cmpxchg_relaxed (int *,unsigned int*,unsigned int) ;
 scalar_t__ unlikely (int) ;

bool refcount_add_not_zero_checked(unsigned int i, refcount_t *r)
{
 unsigned int new, val = atomic_read(&r->refs);

 do {
  if (!val)
   return 0;

  if (unlikely(val == UINT_MAX))
   return 1;

  new = val + i;
  if (new < val)
   new = UINT_MAX;

 } while (!atomic_try_cmpxchg_relaxed(&r->refs, &val, new));

 WARN_ONCE(new == UINT_MAX, "refcount_t: saturated; leaking memory.\n");

 return 1;
}
