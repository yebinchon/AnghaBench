
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_knl (unsigned int,unsigned int) ;

unsigned int get_aperf_mperf_multiplier(unsigned int family, unsigned int model)
{
 if (is_knl(family, model))
  return 1024;
 return 1;
}
