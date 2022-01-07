
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_head {int flags; } ;


 int CACHE_NEGATIVE ;
 int CACHE_VALID ;
 int EAGAIN ;
 int ENOENT ;
 int smp_rmb () ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline int cache_is_valid(struct cache_head *h)
{
 if (!test_bit(CACHE_VALID, &h->flags))
  return -EAGAIN;
 else {

  if (test_bit(CACHE_NEGATIVE, &h->flags))
   return -ENOENT;
  else {






   smp_rmb();
   return 0;
  }
 }
}
