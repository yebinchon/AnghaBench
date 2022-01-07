
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int perf_config__exit () ;
 int perf_config__init () ;

void perf_config__refresh(void)
{
 perf_config__exit();
 perf_config__init();
}
