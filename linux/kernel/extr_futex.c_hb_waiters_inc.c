
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_hash_bucket {int waiters; } ;


 int atomic_inc (int *) ;
 int smp_mb__after_atomic () ;

__attribute__((used)) static inline void hb_waiters_inc(struct futex_hash_bucket *hb)
{







}
