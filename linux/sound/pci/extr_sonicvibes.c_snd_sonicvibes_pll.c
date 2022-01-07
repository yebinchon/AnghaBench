
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* card; } ;
struct TYPE_3__ {int dev; } ;


 int SV_ADCMULT ;
 int SV_REFFREQUENCY ;
 int dev_dbg (int ,char*,unsigned int,unsigned int,unsigned int,...) ;
 int reg ;
 TYPE_2__* sonic ;

__attribute__((used)) static void snd_sonicvibes_pll(unsigned int rate,
          unsigned int *res_r,
          unsigned int *res_m,
          unsigned int *res_n)
{
 unsigned int r, m = 0, n = 0;
 unsigned int xm, xn, xr, xd, metric = ~0U;

 if (rate < 625000 / SV_ADCMULT)
  rate = 625000 / SV_ADCMULT;
 if (rate > 150000000 / SV_ADCMULT)
  rate = 150000000 / SV_ADCMULT;

 for (r = 0; rate < 75000000 / SV_ADCMULT; r += 0x20, rate <<= 1);
 for (xn = 3; xn < 33; xn++)
  for (xm = 3; xm < 257; xm++) {
   xr = ((SV_REFFREQUENCY / SV_ADCMULT) * xm) / xn;
   if (xr >= rate)
    xd = xr - rate;
   else
    xd = rate - xr;
   if (xd < metric) {
    metric = xd;
    m = xm - 2;
    n = xn - 2;
   }
  }
 *res_r = r;
 *res_m = m;
 *res_n = n;






}
