
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;



__attribute__((used)) static int intel_pt_tsc_cmp(uint64_t tsc1, uint64_t tsc2)
{
 const uint64_t halfway = (1ULL << 55);

 if (tsc1 == tsc2)
  return 0;

 if (tsc1 < tsc2) {
  if (tsc2 - tsc1 < halfway)
   return -1;
  else
   return 1;
 } else {
  if (tsc1 - tsc2 < halfway)
   return 1;
  else
   return -1;
 }
}
