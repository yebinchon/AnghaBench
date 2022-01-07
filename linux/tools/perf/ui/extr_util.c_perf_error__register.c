
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_error_ops {int dummy; } ;


 struct perf_error_ops default_eops ;
 struct perf_error_ops* perf_eops ;

int perf_error__register(struct perf_error_ops *eops)
{
 if (perf_eops != &default_eops)
  return -1;

 perf_eops = eops;
 return 0;
}
