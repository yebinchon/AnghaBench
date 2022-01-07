
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (unsigned int*) ;
 unsigned int* sun4i_i2s_oversample_rates ;

__attribute__((used)) static bool sun4i_i2s_oversample_is_valid(unsigned int oversample)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(sun4i_i2s_oversample_rates); i++)
  if (sun4i_i2s_oversample_rates[i] == oversample)
   return 1;

 return 0;
}
