
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NUM_VREFS ;

__attribute__((used)) static int cvt_from_vref_idx(unsigned int vref_caps, unsigned int idx)
{
 unsigned int i, n = 0;

 for (i = 0; i < NUM_VREFS; i++) {
  if (i == idx)
   return n;
  if (vref_caps & (1 << i))
   n++;
 }
 return 0;
}
