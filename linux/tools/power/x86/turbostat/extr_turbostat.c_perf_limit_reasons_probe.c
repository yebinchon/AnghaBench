
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_core_perf_limit_reasons ;
 int do_gfx_perf_limit_reasons ;
 int do_ring_perf_limit_reasons ;
 int genuine_intel ;

void perf_limit_reasons_probe(unsigned int family, unsigned int model)
{
 if (!genuine_intel)
  return;

 if (family != 6)
  return;

 switch (model) {
 case 131:
 case 129:
 case 130:
  do_gfx_perf_limit_reasons = 1;
 case 128:
  do_core_perf_limit_reasons = 1;
  do_ring_perf_limit_reasons = 1;
 default:
  return;
 }
}
