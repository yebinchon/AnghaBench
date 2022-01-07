
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int flags; } ;


 int CS_MEM_EXCLUSIVE ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int is_mem_exclusive(const struct cpuset *cs)
{
 return test_bit(CS_MEM_EXCLUSIVE, &cs->flags);
}
