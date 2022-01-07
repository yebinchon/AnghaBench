
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;


 int TFRC_CALC_X_ARRSIZE ;
 int** tfrc_calc_x_lookup ;

__attribute__((used)) static inline u32 tfrc_binsearch(u32 fval, u8 small)
{
 u32 try, low = 0, high = TFRC_CALC_X_ARRSIZE - 1;

 while (low < high) {
  try = (low + high) / 2;
  if (fval <= tfrc_calc_x_lookup[try][small])
   high = try;
  else
   low = try + 1;
 }
 return high;
}
