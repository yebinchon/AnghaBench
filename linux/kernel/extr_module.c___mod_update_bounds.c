
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long module_addr_max ;
 unsigned long module_addr_min ;

__attribute__((used)) static void __mod_update_bounds(void *base, unsigned int size)
{
 unsigned long min = (unsigned long)base;
 unsigned long max = min + size;

 if (min < module_addr_min)
  module_addr_min = min;
 if (max > module_addr_max)
  module_addr_max = max;
}
