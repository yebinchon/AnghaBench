
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int intel_pt_pick_bit(int bits, int target)
{
 int pos, pick = -1;

 for (pos = 0; bits; bits >>= 1, pos++) {
  if (bits & 1) {
   if (pos <= target || pick < 0)
    pick = pos;
   if (pos >= target)
    break;
  }
 }

 return pick;
}
