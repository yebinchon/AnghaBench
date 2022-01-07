
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ has_slv_msrs (unsigned int,unsigned int) ;

int has_atom_turbo_ratio_limit(unsigned int family, unsigned int model)
{
 if (has_slv_msrs(family, model))
  return 1;

 return 0;
}
