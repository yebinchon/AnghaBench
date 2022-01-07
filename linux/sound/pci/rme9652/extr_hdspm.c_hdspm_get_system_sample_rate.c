
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {unsigned int system_sample_rate; } ;


 unsigned int hdspm_external_sample_rate (struct hdspm*) ;
 unsigned int hdspm_get_pll_freq (struct hdspm*) ;
 scalar_t__ hdspm_system_clock_mode (struct hdspm*) ;

__attribute__((used)) static int hdspm_get_system_sample_rate(struct hdspm *hdspm)
{
 unsigned int rate;

 rate = hdspm_get_pll_freq(hdspm);

 if (rate > 207000) {

  if (0 == hdspm_system_clock_mode(hdspm)) {

   rate = hdspm->system_sample_rate;
  } else {

   rate = hdspm_external_sample_rate(hdspm);
   if (!rate)
    rate = hdspm->system_sample_rate;
  }
 }

 return rate;
}
