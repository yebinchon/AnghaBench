
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;


 int atomic_cmpxchg (int *,int,int) ;
 int atomic_read (int *) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline bool atomic_inc_below(atomic_t *v, int u)
{
 int c, old;
 c = atomic_read(v);
 for (;;) {
  if (unlikely(c >= u))
   return 0;
  old = atomic_cmpxchg(v, c, c+1);
  if (likely(old == c))
   return 1;
  c = old;
 }
}
