
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static uint64_t intel_pt_lower_power_of_2(uint64_t x)
{
 int i;

 for (i = 0; x != 1; i++)
  x >>= 1;

 return x << i;
}
