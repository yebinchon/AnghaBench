
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
calc_parm_search(int msec, short *table)
{
 int left = 1, right = 127, mid;
 while (left < right) {
  mid = (left + right) / 2;
  if (msec < (int)table[mid])
   left = mid + 1;
  else
   right = mid;
 }
 return left;
}
