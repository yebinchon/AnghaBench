
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t locks_mask; int * locks; } ;
struct ila_net {TYPE_1__ xlat; } ;
struct ila_locator {int dummy; } ;
typedef int spinlock_t ;


 size_t ila_locator_hash (struct ila_locator) ;

__attribute__((used)) static inline spinlock_t *ila_get_lock(struct ila_net *ilan,
           struct ila_locator loc)
{
 return &ilan->xlat.locks[ila_locator_hash(loc) & ilan->xlat.locks_mask];
}
