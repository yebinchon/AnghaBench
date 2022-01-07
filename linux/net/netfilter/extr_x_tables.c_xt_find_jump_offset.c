
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool xt_find_jump_offset(const unsigned int *offsets,
    unsigned int target, unsigned int size)
{
 int m, low = 0, hi = size;

 while (hi > low) {
  m = (low + hi) / 2u;

  if (offsets[m] > target)
   hi = m;
  else if (offsets[m] < target)
   low = m + 1;
  else
   return 1;
 }

 return 0;
}
