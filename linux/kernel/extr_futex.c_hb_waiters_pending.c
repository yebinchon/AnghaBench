
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_hash_bucket {int waiters; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline int hb_waiters_pending(struct futex_hash_bucket *hb)
{



 return 1;

}
