
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int atomic64_t ;


 scalar_t__ atomic64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ atomic64_read (int *) ;

__attribute__((used)) static inline void __update_gt_cputime(atomic64_t *cputime, u64 sum_cputime)
{
 u64 curr_cputime;
retry:
 curr_cputime = atomic64_read(cputime);
 if (sum_cputime > curr_cputime) {
  if (atomic64_cmpxchg(cputime, curr_cputime, sum_cputime) != curr_cputime)
   goto retry;
 }
}
