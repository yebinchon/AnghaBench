
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long LPS_PREC ;
 int __delay (unsigned long) ;
 unsigned long jiffies ;

__attribute__((used)) static unsigned long calibrate_delay_converge(void)
{

 unsigned long lpj, lpj_base, ticks, loopadd, loopadd_base, chop_limit;
 int trials = 0, band = 0, trial_in_band = 0;

 lpj = (1<<12);


 ticks = jiffies;
 while (ticks == jiffies)
  ;

 ticks = jiffies;
 do {
  if (++trial_in_band == (1<<band)) {
   ++band;
   trial_in_band = 0;
  }
  __delay(lpj * band);
  trials += band;
 } while (ticks == jiffies);




 trials -= band;
 loopadd_base = lpj * band;
 lpj_base = lpj * trials;

recalibrate:
 lpj = lpj_base;
 loopadd = loopadd_base;





 chop_limit = lpj >> LPS_PREC;
 while (loopadd > chop_limit) {
  lpj += loopadd;
  ticks = jiffies;
  while (ticks == jiffies)
   ;
  ticks = jiffies;
  __delay(lpj);
  if (jiffies != ticks)
   lpj -= loopadd;
  loopadd >>= 1;
 }





 if (lpj + loopadd * 2 == lpj_base + loopadd_base * 2) {
  lpj_base = lpj;
  loopadd_base <<= 2;
  goto recalibrate;
 }

 return lpj;
}
