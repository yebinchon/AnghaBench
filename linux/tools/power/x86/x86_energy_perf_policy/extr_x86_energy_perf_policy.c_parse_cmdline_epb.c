
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENERGY_PERF_BIAS_BALANCE_PERFORMANCE ;
 int ENERGY_PERF_BIAS_BALANCE_POWERSAVE ;
 int ENERGY_PERF_BIAS_NORMAL ;
 int ENERGY_PERF_BIAS_PERFORMANCE ;
 int ENERGY_PERF_BIAS_POWERSAVE ;





 int errx (int,char*) ;
 int has_epb ;
 int update_epb ;

int parse_cmdline_epb(int i)
{
 if (!has_epb)
  errx(1, "EPB not enabled on this platform");

 update_epb = 1;

 switch (i) {
 case 128:
  return ENERGY_PERF_BIAS_POWERSAVE;
 case 131:
  return ENERGY_PERF_BIAS_BALANCE_POWERSAVE;
 case 130:
  return ENERGY_PERF_BIAS_NORMAL;
 case 132:
  return ENERGY_PERF_BIAS_BALANCE_PERFORMANCE;
 case 129:
  return ENERGY_PERF_BIAS_PERFORMANCE;
 }
 if (i < 0 || i > ENERGY_PERF_BIAS_POWERSAVE)
  errx(1, "--epb must be from 0 to 15");
 return i;
}
