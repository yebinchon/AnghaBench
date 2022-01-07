
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct davinci_mcasp {int dev; } ;


 int ACLKXDIV_MASK ;
 int AHCLKXE ;
 int DAVINCI_MCASP_AHCLKXCTL_REG ;
 int MCASP_CLKDIV_AUXCLK ;
 int MCASP_CLKDIV_BCLK ;
 int __davinci_mcasp_set_clkdiv (struct davinci_mcasp*,int ,int,int ) ;
 int dev_info (int ,char*,int) ;
 int dev_warn (int ,char*,unsigned int) ;
 scalar_t__ div64_long (long long,int) ;
 int mcasp_get_reg (struct davinci_mcasp*,int ) ;

__attribute__((used)) static int davinci_mcasp_calc_clk_div(struct davinci_mcasp *mcasp,
          unsigned int sysclk_freq,
          unsigned int bclk_freq, bool set)
{
 u32 reg = mcasp_get_reg(mcasp, DAVINCI_MCASP_AHCLKXCTL_REG);
 int div = sysclk_freq / bclk_freq;
 int rem = sysclk_freq % bclk_freq;
 int error_ppm;
 int aux_div = 1;

 if (div > (ACLKXDIV_MASK + 1)) {
  if (reg & AHCLKXE) {
   aux_div = div / (ACLKXDIV_MASK + 1);
   if (div % (ACLKXDIV_MASK + 1))
    aux_div++;

   sysclk_freq /= aux_div;
   div = sysclk_freq / bclk_freq;
   rem = sysclk_freq % bclk_freq;
  } else if (set) {
   dev_warn(mcasp->dev, "Too fast reference clock (%u)\n",
     sysclk_freq);
  }
 }

 if (rem != 0) {
  if (div == 0 ||
      ((sysclk_freq / div) - bclk_freq) >
      (bclk_freq - (sysclk_freq / (div+1)))) {
   div++;
   rem = rem - bclk_freq;
  }
 }
 error_ppm = (div*1000000 + (int)div64_long(1000000LL*rem,
       (int)bclk_freq)) / div - 1000000;

 if (set) {
  if (error_ppm)
   dev_info(mcasp->dev, "Sample-rate is off by %d PPM\n",
     error_ppm);

  __davinci_mcasp_set_clkdiv(mcasp, MCASP_CLKDIV_BCLK, div, 0);
  if (reg & AHCLKXE)
   __davinci_mcasp_set_clkdiv(mcasp, MCASP_CLKDIV_AUXCLK,
         aux_div, 0);
 }

 return error_ppm;
}
