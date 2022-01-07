
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int tda7419_vol_get_value(int val, unsigned int mask,
     int min, int thresh,
     unsigned int invert)
{
 val &= mask;
 if (val < thresh) {
  if (invert)
   val = 0 - val;
 } else if (val > thresh) {
  if (invert)
   val = val - thresh;
  else
   val = thresh - val;
 }

 if (val < min)
  val = min;

 return val;
}
