
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int flags; } ;


 int CS_SPREAD_SLAB ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int is_spread_slab(const struct cpuset *cs)
{
 return test_bit(CS_SPREAD_SLAB, &cs->flags);
}
