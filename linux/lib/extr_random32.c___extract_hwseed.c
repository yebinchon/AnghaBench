
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 scalar_t__ arch_get_random_int (unsigned int*) ;
 scalar_t__ arch_get_random_seed_int (unsigned int*) ;

__attribute__((used)) static u32 __extract_hwseed(void)
{
 unsigned int val = 0;

 (void)(arch_get_random_seed_int(&val) ||
        arch_get_random_int(&val));

 return val;
}
