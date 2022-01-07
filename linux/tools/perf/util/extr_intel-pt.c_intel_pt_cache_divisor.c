
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int intel_pt_config_div ;
 int perf_config (int ,int*) ;

__attribute__((used)) static int intel_pt_cache_divisor(void)
{
 static int d;

 if (d)
  return d;

 perf_config(intel_pt_config_div, &d);

 if (!d)
  d = 64;

 return d;
}
