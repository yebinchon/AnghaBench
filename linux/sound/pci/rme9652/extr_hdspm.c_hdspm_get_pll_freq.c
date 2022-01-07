
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int dummy; } ;


 int HDSPM_RD_PLL_FREQ ;
 unsigned int hdspm_calc_dds_value (struct hdspm*,unsigned int) ;
 unsigned int hdspm_read (struct hdspm*,int ) ;

__attribute__((used)) static inline int hdspm_get_pll_freq(struct hdspm *hdspm)
{
 unsigned int period, rate;

 period = hdspm_read(hdspm, HDSPM_RD_PLL_FREQ);
 rate = hdspm_calc_dds_value(hdspm, period);

 return rate;
}
