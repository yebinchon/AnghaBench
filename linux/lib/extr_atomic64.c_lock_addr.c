
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int raw_spinlock_t ;
typedef int atomic64_t ;
struct TYPE_2__ {int lock; } ;


 unsigned long L1_CACHE_SHIFT ;
 int NR_LOCKS ;
 TYPE_1__* atomic64_lock ;

__attribute__((used)) static inline raw_spinlock_t *lock_addr(const atomic64_t *v)
{
 unsigned long addr = (unsigned long) v;

 addr >>= L1_CACHE_SHIFT;
 addr ^= (addr >> 8) ^ (addr >> 16);
 return &atomic64_lock[addr & (NR_LOCKS - 1)].lock;
}
