
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_hash_bucket {int waiters; } ;


 int atomic_dec (int *) ;

__attribute__((used)) static inline void hb_waiters_dec(struct futex_hash_bucket *hb)
{



}
