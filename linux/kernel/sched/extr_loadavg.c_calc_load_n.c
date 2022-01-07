
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FSHIFT ;
 unsigned long calc_load (unsigned long,int ,unsigned long) ;
 int fixed_power_int (unsigned long,int ,unsigned int) ;

unsigned long
calc_load_n(unsigned long load, unsigned long exp,
     unsigned long active, unsigned int n)
{
 return calc_load(load, fixed_power_int(exp, FSHIFT, n), active);
}
