
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abs (int) ;

__attribute__((used)) static inline int tda7419_vol_put_value(int val, int thresh,
     unsigned int invert)
{
 if (val < 0) {
  if (invert)
   val = abs(val);
  else
   val = thresh - val;
 } else if ((val > 0) && invert) {
  val += thresh;
 }

 return val;
}
